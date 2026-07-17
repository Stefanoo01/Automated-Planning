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
to generate a plan via the POPF planner.

Once the plan is generated, simply type 
```
run
```
to see the plan being executed!

## Output results
Following the above instructions, you'll see on terminal 2 the actions being executed, while on terminal_1 a summary of the finished action. This is a copy-paste of what the output should be.

```
 ## Launching plansys2 ## 

[INFO] [launch]: All log files can be found below /root/.ros/log/2026-07-14-20-58-40-134327-ASUS-GL-2491
[INFO] [launch]: Default logging verbosity is set to INFO
[INFO] [plansys2_node-1]: process started with pid [2492]
[INFO] [move_action_node-2]: process started with pid [2494]
[INFO] [move_action_node-3]: process started with pid [2496]
[INFO] [move_through_narrow_action_node-4]: process started with pid [2498]
[INFO] [move_through_narrow_action_node-5]: process started with pid [2500]
[INFO] [pickup_regular_sample_action_node-6]: process started with pid [2502]
[INFO] [pickup_regular_sample_action_node-7]: process started with pid [2504]
[INFO] [drop_regular_sample_action_node-8]: process started with pid [2506]
[INFO] [drop_regular_sample_action_node-9]: process started with pid [2508]
[INFO] [store_regular_sample_action_node-10]: process started with pid [2510]
[INFO] [store_regular_sample_action_node-11]: process started with pid [2512]
[INFO] [take_empty_capsule_action_node-12]: process started with pid [2514]
[INFO] [take_empty_capsule_action_node-13]: process started with pid [2516]
[INFO] [encapsulate_sample_action_node-14]: process started with pid [2518]
[INFO] [encapsulate_sample_action_node-15]: process started with pid [2520]
[INFO] [pickup_sensitive_sample_action_node-16]: process started with pid [2522]
[INFO] [pickup_sensitive_sample_action_node-17]: process started with pid [2524]
[INFO] [drop_sensitive_sample_action_node-18]: process started with pid [2526]
[INFO] [drop_sensitive_sample_action_node-19]: process started with pid [2531]
[INFO] [stabilize_capsule_action_node-20]: process started with pid [2539]
[INFO] [stabilize_capsule_action_node-21]: process started with pid [2541]
[INFO] [store_sensitive_sample_action_node-22]: process started with pid [2551]
[INFO] [store_sensitive_sample_action_node-23]: process started with pid [2557]
[INFO] [recharge_action_node-24]: process started with pid [2565]
[plansys2_node-1] [INFO] [1784059122.924630674] [domain_expert_lc_mngr]: Creating client for service [domain_expert/get_state]
[plansys2_node-1] [INFO] [1784059122.924886573] [domain_expert_lc_mngr]: Creating client for service [domain_expert/change_state]
[plansys2_node-1] [INFO] [1784059122.930933302] [executor_lc_mngr]: Creating client for service [executor/get_state]
[plansys2_node-1] [INFO] [1784059122.931017770] [executor_lc_mngr]: Creating client for service [executor/change_state]
[plansys2_node-1] [INFO] [1784059122.936313777] [planner_lc_mngr]: Creating client for service [planner/get_state]
[plansys2_node-1] [INFO] [1784059122.936386085] [planner_lc_mngr]: Creating client for service [planner/change_state]
[plansys2_node-1] [INFO] [1784059122.942007470] [problem_expert_lc_mngr]: Creating client for service [problem_expert/get_state]
[plansys2_node-1] [INFO] [1784059122.942104058] [problem_expert_lc_mngr]: Creating client for service [problem_expert/change_state]
[plansys2_node-1] [INFO] [1784059122.951758022] [domain_expert]: [domain_expert] Configuring...
[plansys2_node-1] [INFO] [1784059123.170149838] [domain_expert]: [domain_expert] Configured
[plansys2_node-1] [INFO] [1784059123.170755939] [domain_expert_lc_mngr]: Transition 1 successfully triggered.
[plansys2_node-1] [INFO] [1784059123.171505711] [domain_expert_lc_mngr]: Node domain_expert_lc_mngr has current state inactive.
[plansys2_node-1] [INFO] [1784059123.171879090] [problem_expert]: [problem_expert] Configuring...
[plansys2_node-1] [INFO] [1784059123.176067632] [problem_expert]: [problem_expert] Configured
[plansys2_node-1] [INFO] [1784059123.176333366] [problem_expert_lc_mngr]: Transition 1 successfully triggered.
[plansys2_node-1] [INFO] [1784059123.176862443] [problem_expert_lc_mngr]: Node problem_expert_lc_mngr has current state inactive.
[plansys2_node-1] [INFO] [1784059123.177185827] [planner]: [planner] Configuring...
[plansys2_node-1] [INFO] [1784059123.179504937] [planner]: Created solver : POPF of type plansys2/POPFPlanSolver
[plansys2_node-1] [INFO] [1784059123.179672304] [planner]: [planner] Configured
[plansys2_node-1] [INFO] [1784059123.180236213] [planner_lc_mngr]: Transition 1 successfully triggered.
[plansys2_node-1] [INFO] [1784059123.181345340] [planner_lc_mngr]: Node planner_lc_mngr has current state inactive.
[plansys2_node-1] [INFO] [1784059123.181962827] [executor]: [executor] Configuring...
[plansys2_node-1] [INFO] [1784059123.416526980] [executor]: [executor] Configured
[plansys2_node-1] [INFO] [1784059123.417253930] [executor_lc_mngr]: Transition 1 successfully triggered.
[plansys2_node-1] [INFO] [1784059123.418276768] [executor_lc_mngr]: Node executor_lc_mngr has current state inactive.
[plansys2_node-1] [INFO] [1784059123.419020542] [domain_expert]: [domain_expert] Activating...
[plansys2_node-1] [INFO] [1784059123.419065361] [domain_expert]: [domain_expert] Activated
[plansys2_node-1] [INFO] [1784059123.419466382] [domain_expert_lc_mngr]: Transition 3 successfully triggered.
[plansys2_node-1] [INFO] [1784059123.419811670] [problem_expert]: [problem_expert] Activating...
[plansys2_node-1] [INFO] [1784059123.419865501] [problem_expert]: [problem_expert] Activated
[plansys2_node-1] [INFO] [1784059123.420123717] [problem_expert_lc_mngr]: Transition 3 successfully triggered.
[plansys2_node-1] [INFO] [1784059123.420628649] [planner]: [planner] Activating...
[plansys2_node-1] [INFO] [1784059123.420659601] [planner]: [planner] Activated
[plansys2_node-1] [INFO] [1784059123.420971826] [planner_lc_mngr]: Transition 3 successfully triggered.
[plansys2_node-1] [INFO] [1784059123.421317321] [executor]: [executor] Activating...
[plansys2_node-1] [INFO] [1784059123.421396094] [executor]: [executor] Activated
[plansys2_node-1] [INFO] [1784059123.422009683] [executor_lc_mngr]: Transition 3 successfully triggered.
[plansys2_node-1] [INFO] [1784059123.422692254] [domain_expert_lc_mngr]: Node domain_expert_lc_mngr has current state active.
[plansys2_node-1] [INFO] [1784059123.423778412] [problem_expert_lc_mngr]: Node problem_expert_lc_mngr has current state active.
[plansys2_node-1] [INFO] [1784059123.424479934] [planner_lc_mngr]: Node planner_lc_mngr has current state active.
[plansys2_node-1] [INFO] [1784059123.425322787] [executor_lc_mngr]: Node executor_lc_mngr has current state active.
[plansys2_node-1] [INFO] [1784059268.125286977] [executor]: Action take_empty_capsule timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.135449671] [executor]: Action take_empty_capsule timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.148467353] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.160363547] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.172519969] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.183812559] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.195764006] [executor]: Action encapsulate_sample timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.208695370] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.226211995] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.239526378] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.257784880] [executor]: Action drop_sensitive_sample timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.274514978] [executor]: Action pickup_sensitive_sample timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.289434579] [executor]: Action pickup_regular_sample timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.304341072] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.318210759] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.334584061] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.352931186] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.368333572] [executor]: Action stabilize_capsule timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.379530140] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.394479390] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.408579039] [executor]: Action store_regular_sample timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.423201838] [executor]: Action store_sensitive_sample timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.438753778] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.453576283] [executor]: Action take_empty_capsule timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.468594312] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.485562457] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.501147284] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.517219223] [executor]: Action move_through_narrow timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.534070359] [executor]: Action pickup_regular_sample timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.549634238] [executor]: Action move_through_narrow timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.566766526] [executor]: Action drop_regular_sample timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.584461122] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.603449451] [executor]: Action pickup_regular_sample timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.619295064] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.636276579] [executor]: Action move timeout percentage -1.000000
[plansys2_node-1] [INFO] [1784059268.655120811] [executor]: Action store_regular_sample timeout percentage -1.000000
Taking empty capsule ... [100%]  
Taking empty capsule ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Encapsulating sample ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Dropping sensitive sample ... [100%]  
Picking up sensitive sample ... [100%]  
Moving robot ... [100%]  
Picking up regular sample ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Stabilizing capsule ... [100%]  
Moving robot ... [100%]  
Storing regular sample ... [100%]  
Moving robot ... [100%]  
Storing sensitive sample ... [100%]  
Taking empty capsule ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Moving robot through narrow passage ... [100%]  
Picking up regular sample ... [100%]  
Moving robot through narrow passage ... [100%]  
Dropping regular sample ... [100%]  
Picking up regular sample ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Moving robot ... [100%]  
Storing regular sample ... [100%]  
[plansys2_node-1] [INFO] [1784059357.314250678] [executor]: Plan Succeeded
```