import re
import pandas as pd
import matplotlib.pyplot as plt

# Input/output files
INPUT_CSV = "results.csv"
OUTPUT_TEX = "table.txt"

PROBLEM_ORDER = ["easy", "medium", "hard"]

def sanitize_problem_name(filename:str) -> str:
    """
    Extracts 'easy', 'medium', 'hard' from filenames like:
    problem_easy.pddl, task2_scalability-test_medium.pddl, etc.
    """
    match = re.search(r"(easy|medium|hard)", filename.lower())
    if match:
        return match.group(1)
    return filename 

def format_value(value, decimals=2):
    if pd.isna(value):
        return "N/A"
    return f"{value:.{decimals}f}"


def format_row(row):
    # If the planner failed, all metrics are considered unavailable
    if pd.isna(row["avg_time"]):
        return "N/A", "N/A", "N/A"

    return (
        format_value(row["avg_actions"], 0),
        format_value(row["avg_time"], 2),
        format_value(row["std_time"], 2)
    )

def create_table(df: pd.DataFrame) -> None:

    df["problem"] = df["filename"].apply(sanitize_problem_name)

    summary = (
        df.groupby(["problem", "solver"], dropna=False)
        .agg(
            avg_time=("execution_time_seconds", "mean"),
            std_time=("execution_time_seconds", "std"),
            avg_actions=("length_of_plan", "mean"),
        )
        .reset_index()
    )
    
    summary = summary.sort_values("problem")
    
    # Write LaTeX table
    with open(OUTPUT_TEX, "w") as f:

        f.write("\\begin{tabular}{lcccc}\n")
        f.write("\\hline\n")
        f.write("Problem & Heuristic & \\# Actions & $\\tilde{t_P}$ (s) & $\\sigma_{tP}$ (s)\\\\\n")
        f.write("\\hline\n")
        f.write("\\hline\n")

        for problem in PROBLEM_ORDER + list(set(summary["problem"].drop_duplicates().tolist()) - set(PROBLEM_ORDER)):

            rows = summary[summary["problem"] == problem]
            n = len(rows)

            for i, (_, row) in enumerate(rows.iterrows()):

                actions, time, std = format_row(row)
                if i == 0:
                    
                    f.write(
                        f"\\multirow{{{n}}}{{*}}{{\\textsc{{{problem.replace('.pddl','')}}}}} "
                    )
                    
                f.write(
                    f"& {row['solver']} "
                    f"& {actions} "           
                    f"& {time} "
                    f"& {std} \\\\\n"
                )

            f.write("\\hline\n")

        f.write("\\end{tabular}\n")

    print(f"LaTeX table written to {OUTPUT_TEX}")
    
    
if __name__ == "__main__":

    df = pd.read_csv(INPUT_CSV)
    df.loc[df["execution_time_seconds"] < 0, "execution_time_seconds"] = float("nan")
    df.loc[df["length_of_plan"] < 0, "length_of_plan"] = float("nan")
    
    create_table(df)

