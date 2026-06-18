import re
from tokenize import tokenize
import argparse

class PDDLProblemParser:
    def __init__(self, problem_file):
        self.problem_file = problem_file
        self.tree = self.load_pddl()

    def remove_comments(self, text: str) -> str:
        """Remove ';' comments."""
        return re.sub(r";.*$", "", text, flags=re.MULTILINE)


    def tokenize(self, text: str):
        return re.findall(r"\(|\)|[^\s()]+", text)


    def parse_sexp(self, tokens):
        """Parse tokens into nested Python lists."""
        if not tokens:
            raise ValueError("Unexpected EOF")

        token = tokens.pop(0)

        if token == "(":
            result = []
            while tokens[0] != ")":
                result.append(self.parse_sexp(tokens))
            tokens.pop(0)  # needed to remove ')'
            return result

        return token


    def load_pddl(self):
        with open(self.problem_file, "r") as f:
            text = self.remove_comments(f.read())

        tokens = self.tokenize(text)
        return self.parse_sexp(tokens)


    def find_section(self, tree, name):
        """Find a top-level section such as :objects, :init, :goal."""
        for item in tree:
            if isinstance(item, list) and item and item[0] == name:
                return item
        return None


    def parse_objects(self, objects_section):
        entries = objects_section[1:]

        instances = []

        current = []

        i = 0
        while i < len(entries):
            token = entries[i]

            if token == "-":
                obj_type = entries[i + 1]

                for obj in current:
                    instances.append((obj, obj_type))

                current = []
                i += 2
            else:
                current.append(token)
                i += 1

        return instances


    def predicate_to_string(self, expr):
        if isinstance(expr, str):
            return expr

        return "(" + " ".join(self.predicate_to_string(x) for x in expr) + ")"


    def parse_init(self, init_section):
        predicates = []
        functions = []

        for expr in init_section[1:]:

            # Numeric fluent assignment
            if (
                isinstance(expr, list)
                and len(expr) > 0
                and expr[0] == "="
            ):
                functions.append(self.predicate_to_string(expr))
            else:
                predicates.append(self.predicate_to_string(expr))

        return predicates, functions


    def flatten_goal(self, goal_section):
        goal_expr = goal_section[1]
        return self.predicate_to_string(goal_expr)


    def convert_pddl(self):
        tree = self.load_pddl()

        objects_section = self.find_section(tree, ":objects")
        init_section = self.find_section(tree, ":init")
        goal_section = self.find_section(tree, ":goal")

        instances = self.parse_objects(objects_section)
        predicates, functions = self.parse_init(init_section)
        goal = self.flatten_goal(goal_section)

        lines = []

        # Objects
        for name, typ in instances:
            lines.append(f"set instance {name} {typ}")

        lines.append("")

        # Predicates
        for pred in predicates:
            lines.append(f"set predicate {pred}")

        lines.append("")

        # Functions
        for fn in functions:
            lines.append(f"set function {fn}")

        lines.append("")

        # Goal
        lines.append(f"set goal {goal}")

        return "\n".join(lines)

    def convert_and_write_output(self, output_file):
        content = self.convert_pddl()

        with open(output_file, "w") as f:
            f.write(content)

        return output_file

if __name__ == "__main__":
    
    arg_parser = argparse.ArgumentParser(
        description="Convert a PDDL problem file into the target format."
    )

    arg_parser.add_argument(
        "input_file",
        help="Path to the PDDL problem file"
    )

    arg_parser.add_argument(
        "output_file",
        help="Path to the output file"
    )

    args = arg_parser.parse_args()

    parser = PDDLProblemParser(args.input_file)
    parser.convert_and_write_output(args.output_file)

    print(f"Written output to {args.output_file}")