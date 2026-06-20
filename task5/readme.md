# Plansys2 Abyssus Base Project

To make this ros2 package work you will need two terminal. In the first one, run the script to create the Dockerfile (which will be destroyed once closed).

Notice that all the following code assumes you are already into the current directory (if not, please run `cd task5`.)

## First terminal

```
./start_docker.sh
```

This command will create the dockerfile based on the `task5/Dockerfile` file, install the dependencies, and mount the directories and scripts required inside the `/root/plansys2_ws` directory.

Once you are inside the docker, you will be automatically loaded inside the `/root/plansys2_ws` directory. Here, you need to prepare the workspace by launching

```
./setup.sh
```

which will parse the problem.pddl file from `plansys2_abyssus_base/pddl`, automatically converting it into the `problem` file you will launch with plansys2. Once this step is done, the setup will also build the project `plansys2_abyssus_base`.

Lately, you need to launch plansys2 with the domain file, which can all be done via the bash script

```
./terminal_1.sh
```

## Second terminal
Once the `./terminal_1.sh` script is running, you can open up another terminal, connect (via `docker exec -it <docker_id> bash` to the container), and launch the `plansys2_terminal` with the bash script

```
./terminal_2.sh
```

Once it has opened, you need to source the problem file you have previosuly created via the `./setup.sh` script by running

```
source ./plansys2_abyssus_base/launch/problem 1
```

Once the problem has been parsed correctly, type
```
get plan
```
to _____