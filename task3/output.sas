;; #state features
96
+at[rov1,docking_station]
+at[rov2,docking_station]
+at[s1,wing_alpha]
+at[s2,wing_alpha]
+at[s6,wing_alpha]
+at[s5,wing_beta]
+at[s3,wing_beta]
+at[s4,wing_beta]
+at[cap1,docking_station]
+at[cap2,docking_station]
+empty-capsule[cap1]
+empty-capsule[cap2]
+todo-regular[s1]
+todo-regular[s2]
+todo-regular[s3]
+todo-sensitive[s4]
+todo-sensitive[s5]
+todo-sensitive[s6]
+capacity[rov1,c1]
+capacity[rov2,c3]
-stabilized[s4]
-stabilized[s5]
-stabilized[s6]
-visited[rov1,bio_vault]
-visited[rov1,decompression_chamber]
-visited[rov1,docking_station]
-visited[rov1,pressure_stabilizer]
-visited[rov1,transfer_zone]
-visited[rov1,wing_alpha]
-visited[rov1,wing_beta]
-visited[rov2,bio_vault]
-visited[rov2,decompression_chamber]
-visited[rov2,docking_station]
-visited[rov2,pressure_stabilizer]
-visited[rov2,transfer_zone]
-visited[rov2,wing_beta]
+at[rov1,transfer_zone]
+at[rov2,transfer_zone]
+carrying[rov1,cap1]
+capacity[rov1,c0]
+carrying[rov1,cap2]
+carrying[rov2,cap1]
+capacity[rov2,c2]
+carrying[rov2,cap2]
+at[rov1,wing_beta]
+at[rov1,decompression_chamber]
+at[rov1,wing_alpha]
+at[rov2,wing_beta]
+at[rov2,decompression_chamber]
+capacity[rov2,c1]
+carrying[rov1,s3]
+sample-in-capsule[s5,cap1]
+capsule-sealed[cap1]
+sample-in-capsule[s4,cap1]
+sample-in-capsule[s5,cap2]
+capsule-sealed[cap2]
+sample-in-capsule[s4,cap2]
+at[rov1,pressure_stabilizer]
+at[rov1,bio_vault]
+carrying[rov1,s1]
+carrying[rov1,s2]
+sample-in-capsule[s6,cap1]
+sample-in-capsule[s6,cap2]
+carrying[rov2,s3]
+at[rov2,pressure_stabilizer]
+at[rov2,bio_vault]
+capacity[rov2,c0]
+capacity[rov1,c2]
+at[s3,transfer_zone]
+at[s3,wing_alpha]
+at[cap1,transfer_zone]
+at[cap2,transfer_zone]
+at[cap1,pressure_stabilizer]
+at[cap2,pressure_stabilizer]
+stored[s3]
+at[cap1,bio_vault]
+at[cap2,bio_vault]
+at[s1,transfer_zone]
+stored[s1]
+at[s2,transfer_zone]
+stored[s2]
+capacity[rov1,c3]
+stabilized[s5]
+stabilized[s4]
+stabilized[s6]
-todo-regular[s3]
+carrying[rov2,s1]
-todo-regular[s1]
+carrying[rov2,s2]
-todo-regular[s2]
+stored[s5]
+stored[s4]
+stored[s6]
-todo-sensitive[s5]
-todo-sensitive[s4]
-todo-sensitive[s6]

;; Mutex Groups
96
0 0 +at[rov1,docking_station]
1 1 +at[rov2,docking_station]
2 2 +at[s1,wing_alpha]
3 3 +at[s2,wing_alpha]
4 4 +at[s6,wing_alpha]
5 5 +at[s5,wing_beta]
6 6 +at[s3,wing_beta]
7 7 +at[s4,wing_beta]
8 8 +at[cap1,docking_station]
9 9 +at[cap2,docking_station]
10 10 +empty-capsule[cap1]
11 11 +empty-capsule[cap2]
12 12 +todo-regular[s1]
13 13 +todo-regular[s2]
14 14 +todo-regular[s3]
15 15 +todo-sensitive[s4]
16 16 +todo-sensitive[s5]
17 17 +todo-sensitive[s6]
18 18 +capacity[rov1,c1]
19 19 +capacity[rov2,c3]
20 20 -stabilized[s4]
21 21 -stabilized[s5]
22 22 -stabilized[s6]
23 23 -visited[rov1,bio_vault]
24 24 -visited[rov1,decompression_chamber]
25 25 -visited[rov1,docking_station]
26 26 -visited[rov1,pressure_stabilizer]
27 27 -visited[rov1,transfer_zone]
28 28 -visited[rov1,wing_alpha]
29 29 -visited[rov1,wing_beta]
30 30 -visited[rov2,bio_vault]
31 31 -visited[rov2,decompression_chamber]
32 32 -visited[rov2,docking_station]
33 33 -visited[rov2,pressure_stabilizer]
34 34 -visited[rov2,transfer_zone]
35 35 -visited[rov2,wing_beta]
36 36 +at[rov1,transfer_zone]
37 37 +at[rov2,transfer_zone]
38 38 +carrying[rov1,cap1]
39 39 +capacity[rov1,c0]
40 40 +carrying[rov1,cap2]
41 41 +carrying[rov2,cap1]
42 42 +capacity[rov2,c2]
43 43 +carrying[rov2,cap2]
44 44 +at[rov1,wing_beta]
45 45 +at[rov1,decompression_chamber]
46 46 +at[rov1,wing_alpha]
47 47 +at[rov2,wing_beta]
48 48 +at[rov2,decompression_chamber]
49 49 +capacity[rov2,c1]
50 50 +carrying[rov1,s3]
51 51 +sample-in-capsule[s5,cap1]
52 52 +capsule-sealed[cap1]
53 53 +sample-in-capsule[s4,cap1]
54 54 +sample-in-capsule[s5,cap2]
55 55 +capsule-sealed[cap2]
56 56 +sample-in-capsule[s4,cap2]
57 57 +at[rov1,pressure_stabilizer]
58 58 +at[rov1,bio_vault]
59 59 +carrying[rov1,s1]
60 60 +carrying[rov1,s2]
61 61 +sample-in-capsule[s6,cap1]
62 62 +sample-in-capsule[s6,cap2]
63 63 +carrying[rov2,s3]
64 64 +at[rov2,pressure_stabilizer]
65 65 +at[rov2,bio_vault]
66 66 +capacity[rov2,c0]
67 67 +capacity[rov1,c2]
68 68 +at[s3,transfer_zone]
69 69 +at[s3,wing_alpha]
70 70 +at[cap1,transfer_zone]
71 71 +at[cap2,transfer_zone]
72 72 +at[cap1,pressure_stabilizer]
73 73 +at[cap2,pressure_stabilizer]
74 74 +stored[s3]
75 75 +at[cap1,bio_vault]
76 76 +at[cap2,bio_vault]
77 77 +at[s1,transfer_zone]
78 78 +stored[s1]
79 79 +at[s2,transfer_zone]
80 80 +stored[s2]
81 81 +capacity[rov1,c3]
82 82 +stabilized[s5]
83 83 +stabilized[s4]
84 84 +stabilized[s6]
85 85 -todo-regular[s3]
86 86 +carrying[rov2,s1]
87 87 -todo-regular[s1]
88 88 +carrying[rov2,s2]
89 89 -todo-regular[s2]
90 90 +stored[s5]
91 91 +stored[s4]
92 92 +stored[s6]
93 93 -todo-sensitive[s5]
94 94 -todo-sensitive[s4]
95 95 -todo-sensitive[s6]

;; further strict Mutex Groups
0

;; further non strict Mutex Groups
0

;; known invariants
0

;; Actions
476
0
85 89 87 -1
-1
-1
0
12 -1
-1
-1
1
12 78 -1
0 87  -1
0 12  -1
1
58 67 59 -1
0 81  0 78  -1
0 67  0 59  -1
1
58 39 59 -1
0 18  0 78  -1
0 39  0 59  -1
1
58 18 59 -1
0 67  0 78  -1
0 18  0 59  -1
1
77 36 81 -1
0 67  0 59  -1
0 81  0 77  -1
1
77 36 18 -1
0 39  0 59  -1
0 18  0 77  -1
1
77 36 67 -1
0 18  0 59  -1
0 67  0 77  -1
0
77 12 -1
-1
-1
0
36 -1
-1
-1
0
0 -1
-1
-1
1
0 -1
0 36  -1
0 0  -1
0
44 -1
-1
-1
1
44 -1
0 36  -1
0 44  -1
0
45 -1
-1
-1
1
45 -1
0 36  -1
0 45  -1
0
46 -1
-1
-1
1
46 -1
0 36  -1
0 46  -1
0
24 57 -1
-1
-1
1
57 -1
0 45  -1
0 57  -1
1
-1
0 26  -1
-1
1
-1
-1
0 26  -1
0
23 45 -1
-1
-1
1
45 -1
0 58  -1
0 45  -1
1
-1
0 24  -1
-1
1
-1
-1
0 24  -1
0
23 57 -1
-1
-1
1
57 -1
0 58  -1
0 57  -1
0
26 45 -1
-1
-1
1
45 -1
0 57  -1
0 45  -1
0
29 36 -1
-1
-1
1
36 -1
0 44  -1
0 36  -1
1
-1
0 27  -1
-1
1
-1
-1
0 27  -1
0
24 36 -1
-1
-1
1
36 -1
0 45  -1
0 36  -1
0
25 36 -1
-1
-1
1
36 -1
0 0  -1
0 36  -1
0
24 58 -1
-1
-1
1
58 -1
0 45  -1
0 58  -1
1
-1
0 23  -1
-1
1
-1
-1
0 23  -1
0
26 58 -1
-1
-1
1
58 -1
0 57  -1
0 58  -1
0
28 36 -1
-1
-1
1
36 -1
0 46  -1
0 36  -1
0
27 45 -1
-1
-1
0
27 44 -1
-1
-1
1
-1
0 29  -1
-1
1
-1
-1
0 29  -1
0
27 0 -1
-1
-1
1
-1
0 25  -1
-1
1
-1
-1
0 25  -1
0
27 46 -1
-1
-1
1
-1
0 28  -1
-1
1
-1
-1
0 28  -1
0
58 -1
-1
-1
0
57 -1
-1
-1
1
2 46 81 -1
0 67  0 59  -1
0 81  0 2  -1
1
2 46 18 -1
0 39  0 59  -1
0 18  0 2  -1
1
46 2 67 -1
0 18  0 59  -1
0 67  0 2  -1
0
2 12 -1
-1
-1
1
65 66 86 -1
0 49  0 78  -1
0 66  0 86  -1
1
65 49 86 -1
0 42  0 78  -1
0 49  0 86  -1
1
65 42 86 -1
0 19  0 78  -1
0 42  0 86  -1
0
1 -1
-1
-1
0
37 -1
-1
-1
1
37 -1
0 1  -1
0 37  -1
0
33 48 -1
-1
-1
1
48 -1
0 64  -1
0 48  -1
1
-1
0 31  -1
-1
1
-1
-1
0 31  -1
0
34 48 -1
-1
-1
1
48 -1
0 37  -1
0 48  -1
0
30 48 -1
-1
-1
1
48 -1
0 65  -1
0 48  -1
0
35 37 -1
-1
-1
1
37 -1
0 47  -1
0 37  -1
1
-1
0 34  -1
-1
1
-1
-1
0 34  -1
0
31 37 -1
-1
-1
1
37 -1
0 48  -1
0 37  -1
0
34 47 -1
-1
-1
1
47 -1
0 37  -1
0 47  -1
1
-1
0 35  -1
-1
1
-1
-1
0 35  -1
0
34 1 -1
-1
-1
1
1 -1
0 37  -1
0 1  -1
1
-1
0 32  -1
-1
1
-1
-1
0 32  -1
0
33 65 -1
-1
-1
1
65 -1
0 64  -1
0 65  -1
1
-1
0 30  -1
-1
1
-1
-1
0 30  -1
0
31 65 -1
-1
-1
1
65 -1
0 48  -1
0 65  -1
0
31 64 -1
-1
-1
1
64 -1
0 48  -1
0 64  -1
1
-1
0 33  -1
-1
1
-1
-1
0 33  -1
0
30 64 -1
-1
-1
1
64 -1
0 65  -1
0 64  -1
0
65 -1
-1
-1
0
64 -1
-1
-1
0
48 -1
-1
-1
0
32 37 -1
-1
-1
0
47 -1
-1
-1
1
77 37 19 -1
0 42  0 86  -1
0 19  0 77  -1
1
77 37 42 -1
0 49  0 86  -1
0 42  0 77  -1
1
77 37 49 -1
0 66  0 86  -1
0 49  0 77  -1
0
2 -1
-1
-1
1
36 18 59 -1
0 67  0 77  -1
0 18  0 59  -1
1
36 39 59 -1
0 18  0 77  -1
0 39  0 59  -1
1
36 67 59 -1
0 81  0 77  -1
0 67  0 59  -1
0
77 -1
-1
-1
1
39 46 59 -1
0 18  0 2  -1
0 39  0 59  -1
1
18 46 59 -1
0 67  0 2  -1
0 18  0 59  -1
1
67 46 59 -1
0 81  0 2  -1
0 67  0 59  -1
0
13 -1
-1
-1
1
13 80 -1
0 89  -1
0 13  -1
1
58 18 60 -1
0 67  0 80  -1
0 18  0 60  -1
1
58 39 60 -1
0 18  0 80  -1
0 39  0 60  -1
1
58 67 60 -1
0 81  0 80  -1
0 67  0 60  -1
1
79 36 81 -1
0 67  0 60  -1
0 81  0 79  -1
1
79 36 67 -1
0 18  0 60  -1
0 67  0 79  -1
1
79 36 18 -1
0 39  0 60  -1
0 18  0 79  -1
0
79 13 -1
-1
-1
1
3 46 18 -1
0 39  0 60  -1
0 18  0 3  -1
1
46 3 81 -1
0 67  0 60  -1
0 81  0 3  -1
1
3 46 67 -1
0 18  0 60  -1
0 67  0 3  -1
0
3 13 -1
-1
-1
1
65 66 88 -1
0 49  0 80  -1
0 66  0 88  -1
1
65 49 88 -1
0 42  0 80  -1
0 49  0 88  -1
1
65 42 88 -1
0 19  0 80  -1
0 42  0 88  -1
1
79 37 49 -1
0 66  0 88  -1
0 49  0 79  -1
1
79 37 42 -1
0 49  0 88  -1
0 42  0 79  -1
1
79 37 19 -1
0 42  0 88  -1
0 19  0 79  -1
0
3 -1
-1
-1
1
36 18 60 -1
0 67  0 79  -1
0 18  0 60  -1
1
36 39 60 -1
0 18  0 79  -1
0 39  0 60  -1
1
36 67 60 -1
0 81  0 79  -1
0 67  0 60  -1
0
79 -1
-1
-1
1
46 18 60 -1
0 67  0 3  -1
0 18  0 60  -1
1
46 67 60 -1
0 81  0 3  -1
0 67  0 60  -1
1
46 39 60 -1
0 18  0 3  -1
0 39  0 60  -1
0
14 -1
-1
-1
1
14 74 -1
0 85  -1
0 14  -1
1
58 18 50 -1
0 67  0 74  -1
0 18  0 50  -1
1
58 67 50 -1
0 81  0 74  -1
0 67  0 50  -1
1
58 39 50 -1
0 18  0 74  -1
0 39  0 50  -1
1
68 36 18 -1
0 39  0 50  -1
0 18  0 68  -1
1
68 36 67 -1
0 18  0 50  -1
0 67  0 68  -1
1
36 68 81 -1
0 67  0 50  -1
0 81  0 68  -1
0
68 14 -1
-1
-1
1
69 46 81 -1
0 67  0 50  -1
0 81  0 69  -1
1
69 46 18 -1
0 39  0 50  -1
0 18  0 69  -1
1
69 46 67 -1
0 18  0 50  -1
0 67  0 69  -1
0
69 14 -1
-1
-1
1
6 44 18 -1
0 39  0 50  -1
0 18  0 6  -1
1
6 44 67 -1
0 18  0 50  -1
0 67  0 6  -1
1
6 44 81 -1
0 67  0 50  -1
0 81  0 6  -1
0
6 14 -1
-1
-1
1
65 49 63 -1
0 42  0 74  -1
0 49  0 63  -1
1
65 66 63 -1
0 49  0 74  -1
0 66  0 63  -1
1
65 42 63 -1
0 19  0 74  -1
0 42  0 63  -1
1
6 47 49 -1
0 66  0 63  -1
0 49  0 6  -1
1
47 6 19 -1
0 42  0 63  -1
0 19  0 6  -1
1
6 47 42 -1
0 49  0 63  -1
0 42  0 6  -1
1
68 37 19 -1
0 42  0 63  -1
0 19  0 68  -1
1
37 68 42 -1
0 49  0 63  -1
0 42  0 68  -1
1
68 37 49 -1
0 66  0 63  -1
0 49  0 68  -1
0
69 -1
-1
-1
1
36 18 50 -1
0 67  0 68  -1
0 18  0 50  -1
1
36 39 50 -1
0 18  0 68  -1
0 39  0 50  -1
1
36 67 50 -1
0 81  0 68  -1
0 67  0 50  -1
0
68 -1
-1
-1
1
46 18 50 -1
0 67  0 69  -1
0 18  0 50  -1
1
46 39 50 -1
0 18  0 69  -1
0 39  0 50  -1
1
46 67 50 -1
0 81  0 69  -1
0 67  0 50  -1
0
14 77 12 68 81 -1
-1
-1
0
68 14 77 12 67 -1
-1
-1
0
14 77 12 68 42 -1
-1
-1
0
68 14 77 12 19 -1
-1
-1
0
14 12 -1
-1
-1
0
69 2 14 12 -1
-1
-1
0
69 2 -1
-1
-1
0
69 2 14 12 81 -1
-1
-1
0
69 14 12 2 67 -1
-1
-1
0
68 14 77 12 -1
-1
-1
0
68 77 -1
-1
-1
0
68 79 14 13 67 -1
-1
-1
0
79 14 13 68 81 -1
-1
-1
0
79 14 13 68 42 -1
-1
-1
0
68 79 14 13 19 -1
-1
-1
0
14 13 -1
-1
-1
0
69 3 14 13 -1
-1
-1
0
69 3 -1
-1
-1
0
69 14 13 3 81 -1
-1
-1
0
69 3 14 13 67 -1
-1
-1
0
68 79 14 13 -1
-1
-1
0
68 79 -1
-1
-1
0
13 79 14 68 81 -1
-1
-1
0
68 13 79 14 67 -1
-1
-1
0
13 79 14 68 42 -1
-1
-1
0
68 13 79 14 19 -1
-1
-1
0
13 14 -1
-1
-1
0
3 69 13 14 -1
-1
-1
0
3 69 -1
-1
-1
0
69 13 14 3 81 -1
-1
-1
0
3 69 13 14 67 -1
-1
-1
0
68 13 79 14 -1
-1
-1
0
79 68 -1
-1
-1
0
79 13 77 12 67 -1
-1
-1
0
79 13 77 12 81 -1
-1
-1
0
79 13 77 12 42 -1
-1
-1
0
79 13 77 12 19 -1
-1
-1
0
13 12 -1
-1
-1
0
3 2 13 12 -1
-1
-1
0
3 2 -1
-1
-1
0
2 13 12 3 81 -1
-1
-1
0
3 13 12 2 67 -1
-1
-1
0
79 13 77 12 -1
-1
-1
0
79 77 -1
-1
-1
0
79 77 12 13 67 -1
-1
-1
0
79 77 12 13 81 -1
-1
-1
0
79 77 12 13 42 -1
-1
-1
0
79 77 12 13 19 -1
-1
-1
0
12 13 -1
-1
-1
0
2 3 12 13 -1
-1
-1
0
2 3 -1
-1
-1
0
2 12 13 3 81 -1
-1
-1
0
3 12 13 2 67 -1
-1
-1
0
79 77 12 13 -1
-1
-1
0
77 79 -1
-1
-1
0
77 12 14 68 81 -1
-1
-1
0
68 77 12 14 67 -1
-1
-1
0
68 77 12 14 19 -1
-1
-1
0
77 12 14 68 42 -1
-1
-1
0
12 14 -1
-1
-1
0
2 69 12 14 -1
-1
-1
0
2 69 -1
-1
-1
0
2 69 12 14 81 -1
-1
-1
0
69 12 14 2 67 -1
-1
-1
0
68 77 12 14 -1
-1
-1
0
77 68 -1
-1
-1
0
95 93 94 -1
-1
-1
0
17 -1
-1
-1
1
17 84 92 -1
0 95  -1
0 17  -1
1
18 58 84 52 61 38 -1
0 67  0 75  0 10  0 92  -1
0 18  0 38  0 61  0 52  -1
1
58 84 39 52 61 38 -1
0 18  0 75  0 10  0 92  -1
0 38  0 61  0 39  0 52  -1
1
67 58 84 52 61 38 -1
0 81  0 75  0 10  0 92  -1
0 67  0 38  0 61  0 52  -1
1
72 57 81 52 61 -1
0 67  0 38  -1
0 81  0 72  -1
1
72 57 67 52 61 -1
0 18  0 38  -1
0 67  0 72  -1
1
72 57 18 52 61 -1
0 39  0 38  -1
0 18  0 72  -1
1
57 67 52 61 38 -1
0 81  0 72  -1
0 67  0 38  -1
1
57 18 52 61 38 -1
0 67  0 72  -1
0 18  0 38  -1
1
57 39 52 61 38 -1
0 18  0 72  -1
0 39  0 38  -1
0
70 4 17 10 -1
-1
-1
1
70 81 36 10 -1
0 67  0 38  -1
0 81  0 70  -1
1
70 67 36 10 -1
0 18  0 38  -1
0 67  0 70  -1
1
70 18 36 10 -1
0 39  0 38  -1
0 18  0 70  -1
0
8 4 17 10 -1
-1
-1
1
8 0 81 10 -1
0 67  0 38  -1
0 81  0 8  -1
1
8 0 18 10 -1
0 39  0 38  -1
0 18  0 8  -1
1
8 0 67 10 -1
0 18  0 38  -1
0 67  0 8  -1
0
4 17 75 10 -1
-1
-1
1
58 81 75 10 -1
0 67  0 38  -1
0 81  0 75  -1
1
58 18 75 10 -1
0 39  0 38  -1
0 18  0 75  -1
1
58 67 75 10 -1
0 18  0 38  -1
0 67  0 75  -1
0
72 4 17 10 -1
-1
-1
1
72 57 81 10 -1
0 67  0 38  -1
0 81  0 72  -1
1
72 57 67 10 -1
0 18  0 38  -1
0 67  0 72  -1
1
72 57 18 10 -1
0 39  0 38  -1
0 18  0 72  -1
1
4 46 10 38 -1
0 52  0 61  -1
0 4  0 10  -1
1
72 57 52 22 61 -1
0 84  -1
0 22  -1
1
18 58 84 55 62 40 -1
0 67  0 76  0 11  0 92  -1
0 18  0 40  0 62  0 55  -1
1
67 58 84 55 62 40 -1
0 81  0 76  0 11  0 92  -1
0 67  0 40  0 62  0 55  -1
1
39 58 84 55 62 40 -1
0 18  0 76  0 11  0 92  -1
0 39  0 40  0 62  0 55  -1
1
73 57 81 55 62 -1
0 67  0 40  -1
0 81  0 73  -1
1
73 57 67 55 62 -1
0 18  0 40  -1
0 67  0 73  -1
1
73 57 18 55 62 -1
0 39  0 40  -1
0 18  0 73  -1
1
57 67 55 62 40 -1
0 81  0 73  -1
0 67  0 40  -1
1
57 39 55 62 40 -1
0 18  0 73  -1
0 39  0 40  -1
1
57 18 55 62 40 -1
0 67  0 73  -1
0 18  0 40  -1
0
71 4 17 11 -1
-1
-1
1
71 36 81 11 -1
0 67  0 40  -1
0 81  0 71  -1
1
71 36 67 11 -1
0 18  0 40  -1
0 67  0 71  -1
1
71 36 18 11 -1
0 39  0 40  -1
0 18  0 71  -1
0
9 4 17 11 -1
-1
-1
1
9 0 81 11 -1
0 67  0 40  -1
0 81  0 9  -1
1
9 0 67 11 -1
0 18  0 40  -1
0 67  0 9  -1
1
9 0 18 11 -1
0 39  0 40  -1
0 18  0 9  -1
0
4 17 76 11 -1
-1
-1
1
58 81 76 11 -1
0 67  0 40  -1
0 81  0 76  -1
1
58 67 76 11 -1
0 18  0 40  -1
0 67  0 76  -1
1
58 18 76 11 -1
0 39  0 40  -1
0 18  0 76  -1
0
73 4 17 11 -1
-1
-1
1
73 57 67 11 -1
0 18  0 40  -1
0 67  0 73  -1
1
73 57 18 11 -1
0 39  0 40  -1
0 18  0 73  -1
1
73 57 81 11 -1
0 67  0 40  -1
0 81  0 73  -1
1
4 46 11 40 -1
0 55  0 62  -1
0 4  0 11  -1
1
73 57 22 55 62 -1
0 84  -1
0 22  -1
1
71 81 55 36 62 -1
0 67  0 40  -1
0 81  0 71  -1
1
71 67 55 36 62 -1
0 18  0 40  -1
0 67  0 71  -1
1
71 18 55 36 62 -1
0 39  0 40  -1
0 18  0 71  -1
1
65 66 84 55 62 43 -1
0 49  0 76  0 11  0 92  -1
0 66  0 43  0 62  0 55  -1
1
65 84 55 49 62 43 -1
0 42  0 76  0 11  0 92  -1
0 43  0 49  0 62  0 55  -1
1
65 84 42 55 62 43 -1
0 19  0 76  0 11  0 92  -1
0 43  0 62  0 42  0 55  -1
1
73 64 55 49 62 -1
0 66  0 43  -1
0 49  0 73  -1
1
73 64 19 55 62 -1
0 42  0 43  -1
0 19  0 73  -1
1
73 64 42 55 62 -1
0 49  0 43  -1
0 42  0 73  -1
1
64 55 49 62 43 -1
0 42  0 73  -1
0 49  0 43  -1
1
64 42 55 62 43 -1
0 19  0 73  -1
0 42  0 43  -1
1
64 66 55 62 43 -1
0 49  0 73  -1
0 66  0 43  -1
1
71 37 55 49 62 -1
0 66  0 43  -1
0 49  0 71  -1
1
71 37 42 55 62 -1
0 49  0 43  -1
0 42  0 71  -1
1
37 71 19 55 62 -1
0 42  0 43  -1
0 19  0 71  -1
1
73 64 22 55 62 -1
0 84  -1
0 22  -1
0
71 17 55 62 -1
-1
-1
1
67 55 36 62 40 -1
0 81  0 71  -1
0 67  0 40  -1
1
39 55 36 62 40 -1
0 18  0 71  -1
0 39  0 40  -1
1
18 55 36 62 40 -1
0 67  0 71  -1
0 18  0 40  -1
1
70 36 81 52 61 -1
0 67  0 38  -1
0 81  0 70  -1
1
70 36 67 52 61 -1
0 18  0 38  -1
0 67  0 70  -1
1
36 70 18 52 61 -1
0 39  0 38  -1
0 18  0 70  -1
1
42 84 65 52 61 41 -1
0 19  0 75  0 10  0 92  -1
0 42  0 41  0 61  0 52  -1
1
49 84 65 52 61 41 -1
0 42  0 75  0 10  0 92  -1
0 49  0 41  0 61  0 52  -1
1
66 84 65 52 61 41 -1
0 49  0 75  0 10  0 92  -1
0 66  0 41  0 61  0 52  -1
1
72 64 49 52 61 -1
0 66  0 41  -1
0 49  0 72  -1
1
72 64 42 52 61 -1
0 49  0 41  -1
0 42  0 72  -1
1
72 64 19 52 61 -1
0 42  0 41  -1
0 19  0 72  -1
1
64 49 52 61 41 -1
0 42  0 72  -1
0 49  0 41  -1
1
64 42 52 61 41 -1
0 19  0 72  -1
0 42  0 41  -1
1
64 66 52 61 41 -1
0 49  0 72  -1
0 66  0 41  -1
1
70 37 49 52 61 -1
0 66  0 41  -1
0 49  0 70  -1
1
70 37 42 52 61 -1
0 49  0 41  -1
0 42  0 70  -1
1
70 37 19 52 61 -1
0 42  0 41  -1
0 19  0 70  -1
1
72 64 52 22 61 -1
0 84  -1
0 22  -1
0
70 17 52 61 -1
-1
-1
1
36 67 52 61 38 -1
0 81  0 70  -1
0 67  0 38  -1
1
36 39 52 61 38 -1
0 18  0 70  -1
0 39  0 38  -1
1
36 18 52 61 38 -1
0 67  0 70  -1
0 18  0 38  -1
0
4 -1
-1
-1
0
16 -1
-1
-1
1
16 82 90 -1
0 93  -1
0 16  -1
1
58 67 82 52 51 38 -1
0 81  0 75  0 10  0 90  -1
0 67  0 38  0 51  0 52  -1
1
58 82 39 52 51 38 -1
0 18  0 75  0 10  0 90  -1
0 38  0 51  0 39  0 52  -1
1
58 18 82 52 51 38 -1
0 67  0 75  0 10  0 90  -1
0 18  0 38  0 51  0 52  -1
1
72 57 67 52 51 -1
0 18  0 38  -1
0 67  0 72  -1
1
72 57 18 52 51 -1
0 39  0 38  -1
0 18  0 72  -1
1
72 57 81 52 51 -1
0 67  0 38  -1
0 81  0 72  -1
1
57 67 52 51 38 -1
0 81  0 72  -1
0 67  0 38  -1
1
57 18 52 51 38 -1
0 67  0 72  -1
0 18  0 38  -1
1
57 39 52 51 38 -1
0 18  0 72  -1
0 39  0 38  -1
0
70 5 16 10 -1
-1
-1
0
8 5 16 10 -1
-1
-1
0
5 16 75 10 -1
-1
-1
0
72 5 16 10 -1
-1
-1
1
5 44 10 38 -1
0 52  0 51  -1
0 5  0 10  -1
1
72 57 21 52 51 -1
0 82  -1
0 21  -1
1
58 82 55 67 54 40 -1
0 81  0 76  0 11  0 90  -1
0 40  0 67  0 54  0 55  -1
1
58 18 82 55 54 40 -1
0 67  0 76  0 11  0 90  -1
0 18  0 40  0 54  0 55  -1
1
58 39 82 55 54 40 -1
0 18  0 76  0 11  0 90  -1
0 39  0 40  0 54  0 55  -1
1
73 57 81 55 54 -1
0 67  0 40  -1
0 81  0 73  -1
1
73 57 18 55 54 -1
0 39  0 40  -1
0 18  0 73  -1
1
73 57 55 67 54 -1
0 18  0 40  -1
0 67  0 73  -1
1
57 55 67 54 40 -1
0 81  0 73  -1
0 67  0 40  -1
1
57 39 55 54 40 -1
0 18  0 73  -1
0 39  0 40  -1
1
57 18 55 54 40 -1
0 67  0 73  -1
0 18  0 40  -1
0
71 5 16 11 -1
-1
-1
0
9 5 16 11 -1
-1
-1
0
5 16 76 11 -1
-1
-1
0
73 5 16 11 -1
-1
-1
1
5 44 11 40 -1
0 55  0 54  -1
0 5  0 11  -1
1
57 73 21 55 54 -1
0 82  -1
0 21  -1
1
65 66 55 54 82 43 -1
0 49  0 76  0 11  0 90  -1
0 66  0 43  0 54  0 55  -1
1
65 42 55 54 82 43 -1
0 19  0 76  0 11  0 90  -1
0 43  0 54  0 42  0 55  -1
1
65 49 55 54 82 43 -1
0 42  0 76  0 11  0 90  -1
0 49  0 43  0 54  0 55  -1
1
73 64 19 55 54 -1
0 42  0 43  -1
0 19  0 73  -1
1
73 64 42 55 54 -1
0 49  0 43  -1
0 42  0 73  -1
1
73 64 49 55 54 -1
0 66  0 43  -1
0 49  0 73  -1
1
64 49 55 54 43 -1
0 42  0 73  -1
0 49  0 43  -1
1
64 42 55 54 43 -1
0 19  0 73  -1
0 42  0 43  -1
1
64 66 55 54 43 -1
0 49  0 73  -1
0 66  0 43  -1
1
9 1 19 11 -1
0 42  0 43  -1
0 19  0 9  -1
1
9 1 49 11 -1
0 66  0 43  -1
0 49  0 9  -1
1
9 1 42 11 -1
0 49  0 43  -1
0 42  0 9  -1
1
65 19 76 11 -1
0 42  0 43  -1
0 19  0 76  -1
1
65 42 76 11 -1
0 49  0 43  -1
0 42  0 76  -1
1
65 49 76 11 -1
0 66  0 43  -1
0 49  0 76  -1
1
73 64 49 11 -1
0 66  0 43  -1
0 49  0 73  -1
1
73 64 42 11 -1
0 49  0 43  -1
0 42  0 73  -1
1
73 64 19 11 -1
0 42  0 43  -1
0 19  0 73  -1
1
71 49 37 11 -1
0 66  0 43  -1
0 49  0 71  -1
1
71 42 37 11 -1
0 49  0 43  -1
0 42  0 71  -1
1
71 19 37 11 -1
0 42  0 43  -1
0 19  0 71  -1
1
5 47 11 43 -1
0 55  0 54  -1
0 5  0 11  -1
1
64 73 21 55 54 -1
0 82  -1
0 21  -1
1
49 82 65 52 51 41 -1
0 42  0 75  0 10  0 90  -1
0 49  0 41  0 51  0 52  -1
1
66 82 65 52 51 41 -1
0 49  0 75  0 10  0 90  -1
0 66  0 41  0 51  0 52  -1
1
42 82 65 52 51 41 -1
0 19  0 75  0 10  0 90  -1
0 42  0 41  0 51  0 52  -1
1
72 49 52 64 51 -1
0 66  0 41  -1
0 49  0 72  -1
1
72 42 52 64 51 -1
0 49  0 41  -1
0 42  0 72  -1
1
72 19 52 64 51 -1
0 42  0 41  -1
0 19  0 72  -1
1
49 52 64 51 41 -1
0 42  0 72  -1
0 49  0 41  -1
1
42 52 64 51 41 -1
0 19  0 72  -1
0 42  0 41  -1
1
66 52 64 51 41 -1
0 49  0 72  -1
0 66  0 41  -1
1
8 1 49 10 -1
0 66  0 41  -1
0 49  0 8  -1
1
8 1 19 10 -1
0 42  0 41  -1
0 19  0 8  -1
1
8 1 42 10 -1
0 49  0 41  -1
0 42  0 8  -1
1
65 19 75 10 -1
0 42  0 41  -1
0 19  0 75  -1
1
65 42 75 10 -1
0 49  0 41  -1
0 42  0 75  -1
1
65 75 49 10 -1
0 66  0 41  -1
0 49  0 75  -1
1
72 64 19 10 -1
0 42  0 41  -1
0 19  0 72  -1
1
72 64 49 10 -1
0 66  0 41  -1
0 49  0 72  -1
1
72 64 42 10 -1
0 49  0 41  -1
0 42  0 72  -1
1
70 37 49 10 -1
0 66  0 41  -1
0 49  0 70  -1
1
70 37 42 10 -1
0 49  0 41  -1
0 42  0 70  -1
1
70 37 19 10 -1
0 42  0 41  -1
0 19  0 70  -1
1
5 47 10 41 -1
0 52  0 51  -1
0 5  0 10  -1
1
72 21 52 64 51 -1
0 82  -1
0 21  -1
0
15 -1
-1
-1
1
15 83 91 -1
0 94  -1
0 15  -1
1
58 18 83 52 53 38 -1
0 67  0 75  0 10  0 91  -1
0 18  0 38  0 53  0 52  -1
1
58 67 83 52 53 38 -1
0 81  0 75  0 10  0 91  -1
0 67  0 38  0 53  0 52  -1
1
58 83 39 52 53 38 -1
0 18  0 75  0 10  0 91  -1
0 38  0 53  0 39  0 52  -1
1
72 57 81 52 53 -1
0 67  0 38  -1
0 81  0 72  -1
1
72 57 67 52 53 -1
0 18  0 38  -1
0 67  0 72  -1
1
72 57 18 52 53 -1
0 39  0 38  -1
0 18  0 72  -1
1
57 67 52 53 38 -1
0 81  0 72  -1
0 67  0 38  -1
1
57 18 52 53 38 -1
0 67  0 72  -1
0 18  0 38  -1
1
57 39 52 53 38 -1
0 18  0 72  -1
0 39  0 38  -1
0
70 7 15 10 -1
-1
-1
0
8 7 15 10 -1
-1
-1
0
7 15 75 10 -1
-1
-1
0
72 7 15 10 -1
-1
-1
1
7 44 10 38 -1
0 52  0 53  -1
0 7  0 10  -1
1
57 72 20 52 53 -1
0 83  -1
0 20  -1
1
58 67 83 55 56 40 -1
0 81  0 76  0 11  0 91  -1
0 67  0 40  0 56  0 55  -1
1
58 39 83 55 56 40 -1
0 18  0 76  0 11  0 91  -1
0 39  0 40  0 56  0 55  -1
1
58 18 83 55 56 40 -1
0 67  0 76  0 11  0 91  -1
0 18  0 40  0 56  0 55  -1
1
73 57 81 55 56 -1
0 67  0 40  -1
0 81  0 73  -1
1
73 57 18 55 56 -1
0 39  0 40  -1
0 18  0 73  -1
1
73 57 67 55 56 -1
0 18  0 40  -1
0 67  0 73  -1
1
57 67 55 56 40 -1
0 81  0 73  -1
0 67  0 40  -1
1
57 18 55 56 40 -1
0 67  0 73  -1
0 18  0 40  -1
1
57 39 55 56 40 -1
0 18  0 73  -1
0 39  0 40  -1
0
71 7 15 11 -1
-1
-1
0
9 7 15 11 -1
-1
-1
0
7 15 76 11 -1
-1
-1
0
73 7 15 11 -1
-1
-1
1
7 44 11 40 -1
0 55  0 56  -1
0 7  0 11  -1
1
73 57 20 55 56 -1
0 83  -1
0 20  -1
1
83 65 52 66 53 41 -1
0 49  0 75  0 10  0 91  -1
0 41  0 66  0 53  0 52  -1
1
49 83 65 52 53 41 -1
0 42  0 75  0 10  0 91  -1
0 49  0 41  0 53  0 52  -1
1
42 83 65 52 53 41 -1
0 19  0 75  0 10  0 91  -1
0 42  0 41  0 53  0 52  -1
1
72 64 49 52 53 -1
0 66  0 41  -1
0 49  0 72  -1
1
72 64 42 52 53 -1
0 49  0 41  -1
0 42  0 72  -1
1
72 64 19 52 53 -1
0 42  0 41  -1
0 19  0 72  -1
1
64 49 52 53 41 -1
0 42  0 72  -1
0 49  0 41  -1
1
64 42 52 53 41 -1
0 19  0 72  -1
0 42  0 41  -1
1
64 52 66 53 41 -1
0 49  0 72  -1
0 66  0 41  -1
1
7 47 10 41 -1
0 52  0 53  -1
0 7  0 10  -1
1
64 72 20 52 53 -1
0 83  -1
0 20  -1
1
65 83 42 55 56 43 -1
0 19  0 76  0 11  0 91  -1
0 43  0 56  0 42  0 55  -1
1
65 49 83 55 56 43 -1
0 42  0 76  0 11  0 91  -1
0 49  0 43  0 56  0 55  -1
1
65 66 83 55 56 43 -1
0 49  0 76  0 11  0 91  -1
0 66  0 43  0 56  0 55  -1
1
73 64 19 55 56 -1
0 42  0 43  -1
0 19  0 73  -1
1
73 64 42 55 56 -1
0 49  0 43  -1
0 42  0 73  -1
1
73 64 49 55 56 -1
0 66  0 43  -1
0 49  0 73  -1
1
64 42 55 56 43 -1
0 19  0 73  -1
0 42  0 43  -1
1
64 49 55 56 43 -1
0 42  0 73  -1
0 49  0 43  -1
1
64 66 55 56 43 -1
0 49  0 73  -1
0 66  0 43  -1
1
7 47 11 43 -1
0 55  0 56  -1
0 7  0 11  -1
1
73 64 20 55 56 -1
0 83  -1
0 20  -1

;; initial state
35 34 33 32 31 30 29 12 11 8 7 6 5 28 4 27 3 26 2 25 10 1 9 0 22 13 14 15 16 17 18 19 20 21 23 24 -1

;; goal
91 90 92 91 90 92 83 82 84 -1

;; tasks (primitive and abstract)
673
0 __method_precondition_m_process_all_regular_base_ordering_0[]
0 __method_precondition_m_process_all_regular_recursive_ordering_0[s1]
0 mark-regular-done[s1]
0 store-regular-sample[rov1,s1,bio_vault,c2,c3]
0 store-regular-sample[rov1,s1,bio_vault,c0,c1]
0 store-regular-sample[rov1,s1,bio_vault,c1,c2]
0 pickup-regular-sample[rov1,s1,transfer_zone,c2,c3]
0 pickup-regular-sample[rov1,s1,transfer_zone,c0,c1]
0 pickup-regular-sample[rov1,s1,transfer_zone,c1,c2]
0 __method_precondition_m_process_regular_sample_ordering_0[s1,transfer_zone,bio_vault]
0 __method_precondition_m_navigate_already_there_ordering_0[rov1,transfer_zone]
0 __method_precondition_m_navigate_direct_connected_ordering_0[rov1,docking_station,transfer_zone]
0 move[rov1,docking_station,transfer_zone]
0 __method_precondition_m_navigate_direct_connected_ordering_0[rov1,wing_beta,transfer_zone]
0 move[rov1,wing_beta,transfer_zone]
0 __method_precondition_m_navigate_direct_connected_ordering_0[rov1,decompression_chamber,transfer_zone]
0 move[rov1,decompression_chamber,transfer_zone]
0 __method_precondition_m_navigate_direct_narrow_ordering_0[rov1,wing_alpha,transfer_zone]
0 move-through-narrow[rov1,wing_alpha,transfer_zone]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,pressure_stabilizer,decompression_chamber,transfer_zone]
0 move[rov1,pressure_stabilizer,decompression_chamber]
0 unvisit[rov1,pressure_stabilizer]
0 visit[rov1,pressure_stabilizer]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,decompression_chamber,bio_vault,transfer_zone]
0 move[rov1,decompression_chamber,bio_vault]
0 unvisit[rov1,decompression_chamber]
0 visit[rov1,decompression_chamber]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,pressure_stabilizer,bio_vault,transfer_zone]
0 move[rov1,pressure_stabilizer,bio_vault]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,decompression_chamber,pressure_stabilizer,transfer_zone]
0 move[rov1,decompression_chamber,pressure_stabilizer]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,transfer_zone,wing_beta,transfer_zone]
0 move[rov1,transfer_zone,wing_beta]
0 unvisit[rov1,transfer_zone]
0 visit[rov1,transfer_zone]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,transfer_zone,decompression_chamber,transfer_zone]
0 move[rov1,transfer_zone,decompression_chamber]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,transfer_zone,docking_station,transfer_zone]
0 move[rov1,transfer_zone,docking_station]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,bio_vault,decompression_chamber,transfer_zone]
0 move[rov1,bio_vault,decompression_chamber]
0 unvisit[rov1,bio_vault]
0 visit[rov1,bio_vault]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,bio_vault,pressure_stabilizer,transfer_zone]
0 move[rov1,bio_vault,pressure_stabilizer]
0 __method_precondition_m_navigate_recursive_narrow_ordering_0[rov1,transfer_zone,wing_alpha,transfer_zone]
0 move-through-narrow[rov1,transfer_zone,wing_alpha]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,decompression_chamber,transfer_zone,docking_station]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,wing_beta,transfer_zone,docking_station]
0 unvisit[rov1,wing_beta]
0 visit[rov1,wing_beta]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov1,docking_station,transfer_zone,docking_station]
0 unvisit[rov1,docking_station]
0 visit[rov1,docking_station]
0 __method_precondition_m_navigate_recursive_narrow_ordering_0[rov1,wing_alpha,transfer_zone,docking_station]
0 unvisit[rov1,wing_alpha]
0 visit[rov1,wing_alpha]
0 __method_precondition_m_navigate_already_there_ordering_0[rov1,bio_vault]
0 __method_precondition_m_navigate_direct_connected_ordering_0[rov1,pressure_stabilizer,bio_vault]
0 pickup-regular-sample[rov1,s1,wing_alpha,c2,c3]
0 pickup-regular-sample[rov1,s1,wing_alpha,c0,c1]
0 pickup-regular-sample[rov1,s1,wing_alpha,c1,c2]
0 __method_precondition_m_process_regular_sample_ordering_0[s1,wing_alpha,bio_vault]
0 store-regular-sample[rov2,s1,bio_vault,c0,c1]
0 store-regular-sample[rov2,s1,bio_vault,c1,c2]
0 store-regular-sample[rov2,s1,bio_vault,c2,c3]
0 __method_precondition_m_navigate_already_there_ordering_0[rov2,docking_station]
0 __method_precondition_m_navigate_direct_connected_ordering_0[rov2,transfer_zone,docking_station]
0 move[rov2,transfer_zone,docking_station]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,decompression_chamber,pressure_stabilizer,docking_station]
0 move[rov2,decompression_chamber,pressure_stabilizer]
0 unvisit[rov2,decompression_chamber]
0 visit[rov2,decompression_chamber]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,decompression_chamber,transfer_zone,docking_station]
0 move[rov2,decompression_chamber,transfer_zone]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,decompression_chamber,bio_vault,docking_station]
0 move[rov2,decompression_chamber,bio_vault]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,transfer_zone,wing_beta,docking_station]
0 move[rov2,transfer_zone,wing_beta]
0 unvisit[rov2,transfer_zone]
0 visit[rov2,transfer_zone]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,transfer_zone,decompression_chamber,docking_station]
0 move[rov2,transfer_zone,decompression_chamber]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,wing_beta,transfer_zone,docking_station]
0 move[rov2,wing_beta,transfer_zone]
0 unvisit[rov2,wing_beta]
0 visit[rov2,wing_beta]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,docking_station,transfer_zone,docking_station]
0 move[rov2,docking_station,transfer_zone]
0 unvisit[rov2,docking_station]
0 visit[rov2,docking_station]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,bio_vault,pressure_stabilizer,docking_station]
0 move[rov2,bio_vault,pressure_stabilizer]
0 unvisit[rov2,bio_vault]
0 visit[rov2,bio_vault]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,bio_vault,decompression_chamber,docking_station]
0 move[rov2,bio_vault,decompression_chamber]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,pressure_stabilizer,decompression_chamber,docking_station]
0 move[rov2,pressure_stabilizer,decompression_chamber]
0 unvisit[rov2,pressure_stabilizer]
0 visit[rov2,pressure_stabilizer]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,pressure_stabilizer,bio_vault,docking_station]
0 move[rov2,pressure_stabilizer,bio_vault]
0 __method_precondition_m_navigate_already_there_ordering_0[rov2,bio_vault]
0 __method_precondition_m_navigate_direct_connected_ordering_0[rov2,pressure_stabilizer,bio_vault]
0 __method_precondition_m_navigate_direct_connected_ordering_0[rov2,decompression_chamber,bio_vault]
0 __method_precondition_m_navigate_recursive_connected_ordering_0[rov2,transfer_zone,docking_station,bio_vault]
0 __method_precondition_m_navigate_already_there_ordering_0[rov2,wing_beta]
0 pickup-regular-sample[rov2,s1,transfer_zone,c2,c3]
0 pickup-regular-sample[rov2,s1,transfer_zone,c1,c2]
0 pickup-regular-sample[rov2,s1,transfer_zone,c0,c1]
0 __method_precondition_m_process_regular_sample_handover_ordering_0_split[s1,wing_alpha,transfer_zone]
0 drop-regular-sample[rov1,s1,transfer_zone,c1,c2]
0 drop-regular-sample[rov1,s1,transfer_zone,c0,c1]
0 drop-regular-sample[rov1,s1,transfer_zone,c2,c3]
0 __method_precondition_m_process_regular_sample_handover_ordering_0_split[s1,transfer_zone,wing_alpha]
0 drop-regular-sample[rov1,s1,wing_alpha,c0,c1]
0 drop-regular-sample[rov1,s1,wing_alpha,c1,c2]
0 drop-regular-sample[rov1,s1,wing_alpha,c2,c3]
0 __method_precondition_m_process_all_regular_recursive_ordering_0[s2]
0 mark-regular-done[s2]
0 store-regular-sample[rov1,s2,bio_vault,c1,c2]
0 store-regular-sample[rov1,s2,bio_vault,c0,c1]
0 store-regular-sample[rov1,s2,bio_vault,c2,c3]
0 pickup-regular-sample[rov1,s2,transfer_zone,c2,c3]
0 pickup-regular-sample[rov1,s2,transfer_zone,c1,c2]
0 pickup-regular-sample[rov1,s2,transfer_zone,c0,c1]
0 __method_precondition_m_process_regular_sample_ordering_0[s2,transfer_zone,bio_vault]
0 pickup-regular-sample[rov1,s2,wing_alpha,c0,c1]
0 pickup-regular-sample[rov1,s2,wing_alpha,c2,c3]
0 pickup-regular-sample[rov1,s2,wing_alpha,c1,c2]
0 __method_precondition_m_process_regular_sample_ordering_0[s2,wing_alpha,bio_vault]
0 store-regular-sample[rov2,s2,bio_vault,c0,c1]
0 store-regular-sample[rov2,s2,bio_vault,c1,c2]
0 store-regular-sample[rov2,s2,bio_vault,c2,c3]
0 pickup-regular-sample[rov2,s2,transfer_zone,c0,c1]
0 pickup-regular-sample[rov2,s2,transfer_zone,c1,c2]
0 pickup-regular-sample[rov2,s2,transfer_zone,c2,c3]
0 __method_precondition_m_process_regular_sample_handover_ordering_0_split[s2,wing_alpha,transfer_zone]
0 drop-regular-sample[rov1,s2,transfer_zone,c1,c2]
0 drop-regular-sample[rov1,s2,transfer_zone,c0,c1]
0 drop-regular-sample[rov1,s2,transfer_zone,c2,c3]
0 __method_precondition_m_process_regular_sample_handover_ordering_0_split[s2,transfer_zone,wing_alpha]
0 drop-regular-sample[rov1,s2,wing_alpha,c1,c2]
0 drop-regular-sample[rov1,s2,wing_alpha,c2,c3]
0 drop-regular-sample[rov1,s2,wing_alpha,c0,c1]
0 __method_precondition_m_process_all_regular_recursive_ordering_0[s3]
0 mark-regular-done[s3]
0 store-regular-sample[rov1,s3,bio_vault,c1,c2]
0 store-regular-sample[rov1,s3,bio_vault,c2,c3]
0 store-regular-sample[rov1,s3,bio_vault,c0,c1]
0 pickup-regular-sample[rov1,s3,transfer_zone,c0,c1]
0 pickup-regular-sample[rov1,s3,transfer_zone,c1,c2]
0 pickup-regular-sample[rov1,s3,transfer_zone,c2,c3]
0 __method_precondition_m_process_regular_sample_ordering_0[s3,transfer_zone,bio_vault]
0 pickup-regular-sample[rov1,s3,wing_alpha,c2,c3]
0 pickup-regular-sample[rov1,s3,wing_alpha,c0,c1]
0 pickup-regular-sample[rov1,s3,wing_alpha,c1,c2]
0 __method_precondition_m_process_regular_sample_ordering_0[s3,wing_alpha,bio_vault]
0 pickup-regular-sample[rov1,s3,wing_beta,c0,c1]
0 pickup-regular-sample[rov1,s3,wing_beta,c1,c2]
0 pickup-regular-sample[rov1,s3,wing_beta,c2,c3]
0 __method_precondition_m_process_regular_sample_ordering_0[s3,wing_beta,bio_vault]
0 store-regular-sample[rov2,s3,bio_vault,c1,c2]
0 store-regular-sample[rov2,s3,bio_vault,c0,c1]
0 store-regular-sample[rov2,s3,bio_vault,c2,c3]
0 pickup-regular-sample[rov2,s3,wing_beta,c0,c1]
0 pickup-regular-sample[rov2,s3,wing_beta,c2,c3]
0 pickup-regular-sample[rov2,s3,wing_beta,c1,c2]
0 pickup-regular-sample[rov2,s3,transfer_zone,c2,c3]
0 pickup-regular-sample[rov2,s3,transfer_zone,c1,c2]
0 pickup-regular-sample[rov2,s3,transfer_zone,c0,c1]
0 __method_precondition_m_process_regular_sample_handover_ordering_0_split[s3,wing_alpha,transfer_zone]
0 drop-regular-sample[rov1,s3,transfer_zone,c1,c2]
0 drop-regular-sample[rov1,s3,transfer_zone,c0,c1]
0 drop-regular-sample[rov1,s3,transfer_zone,c2,c3]
0 __method_precondition_m_process_regular_sample_handover_ordering_0_split[s3,transfer_zone,wing_alpha]
0 drop-regular-sample[rov1,s3,wing_alpha,c1,c2]
0 drop-regular-sample[rov1,s3,wing_alpha,c0,c1]
0 drop-regular-sample[rov1,s3,wing_alpha,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s1,s3,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s1,s3,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s1,s3,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s1,s3,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_process_two_regular_samples_via_handover_ordering_0[s1,s3,bio_vault]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s1,s3,wing_alpha,transfer_zone]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s1,s3,wing_alpha,transfer_zone]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s1,s3,wing_alpha,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s1,s3,wing_alpha,bio_vault,c0,c1,c2]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s1,s3,transfer_zone,wing_alpha]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s1,s3,transfer_zone,wing_alpha]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s2,s3,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s2,s3,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s2,s3,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s2,s3,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_process_two_regular_samples_via_handover_ordering_0[s2,s3,bio_vault]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s2,s3,wing_alpha,transfer_zone]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s2,s3,wing_alpha,transfer_zone]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s2,s3,wing_alpha,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s2,s3,wing_alpha,bio_vault,c0,c1,c2]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s2,s3,transfer_zone,wing_alpha]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s2,s3,transfer_zone,wing_alpha]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s3,s2,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s3,s2,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s3,s2,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s3,s2,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_process_two_regular_samples_via_handover_ordering_0[s3,s2,bio_vault]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s3,s2,wing_alpha,transfer_zone]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s3,s2,wing_alpha,transfer_zone]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s3,s2,wing_alpha,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s3,s2,wing_alpha,bio_vault,c0,c1,c2]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s3,s2,transfer_zone,wing_alpha]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s3,s2,transfer_zone,wing_alpha]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s1,s2,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s1,s2,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s1,s2,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s1,s2,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_process_two_regular_samples_via_handover_ordering_0[s1,s2,bio_vault]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s1,s2,wing_alpha,transfer_zone]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s1,s2,wing_alpha,transfer_zone]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s1,s2,wing_alpha,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s1,s2,wing_alpha,bio_vault,c0,c1,c2]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s1,s2,transfer_zone,wing_alpha]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s1,s2,transfer_zone,wing_alpha]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s2,s1,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s2,s1,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s2,s1,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s2,s1,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_process_two_regular_samples_via_handover_ordering_0[s2,s1,bio_vault]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s2,s1,wing_alpha,transfer_zone]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s2,s1,wing_alpha,transfer_zone]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s2,s1,wing_alpha,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s2,s1,wing_alpha,bio_vault,c0,c1,c2]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s2,s1,transfer_zone,wing_alpha]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s2,s1,transfer_zone,wing_alpha]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s3,s1,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s3,s1,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s3,s1,transfer_zone,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov2,s3,s1,transfer_zone,bio_vault,c0,c1,c2]
0 __method_precondition_m_process_two_regular_samples_via_handover_ordering_0[s3,s1,bio_vault]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s3,s1,wing_alpha,transfer_zone]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s3,s1,wing_alpha,transfer_zone]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s3,s1,wing_alpha,bio_vault,c1,c2,c3]
0 __method_precondition_m_continue_two_regular_from_handover_ordering_0[rov1,s3,s1,wing_alpha,bio_vault,c0,c1,c2]
0 __method_precondition_m_bring_two_regular_to_handover_ordering_0[rov1,s3,s1,transfer_zone,wing_alpha]
0 __method_precondition_m_process_all_regular_two_handover_ordering_0_split_split[s3,s1,transfer_zone,wing_alpha]
0 __method_precondition_m_process_all_sensitive_base_ordering_0[]
0 __method_precondition_m_process_all_sensitive_recursive_ordering_0[s6]
0 mark-sensitive-done[s6]
0 store-sensitive-sample[rov1,s6,cap1,bio_vault,c1,c2]
0 store-sensitive-sample[rov1,s6,cap1,bio_vault,c0,c1]
0 store-sensitive-sample[rov1,s6,cap1,bio_vault,c2,c3]
0 pickup-sensitive-sample[rov1,s6,cap1,pressure_stabilizer,c2,c3]
0 pickup-sensitive-sample[rov1,s6,cap1,pressure_stabilizer,c1,c2]
0 pickup-sensitive-sample[rov1,s6,cap1,pressure_stabilizer,c0,c1]
0 drop-sensitive-sample[rov1,s6,cap1,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov1,s6,cap1,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov1,s6,cap1,pressure_stabilizer,c0,c1]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s6,cap1,wing_alpha,transfer_zone,bio_vault]
0 take-empty-capsule[rov1,cap1,transfer_zone,c2,c3]
0 take-empty-capsule[rov1,cap1,transfer_zone,c1,c2]
0 take-empty-capsule[rov1,cap1,transfer_zone,c0,c1]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s6,cap1,wing_alpha,docking_station,bio_vault]
0 take-empty-capsule[rov1,cap1,docking_station,c2,c3]
0 take-empty-capsule[rov1,cap1,docking_station,c0,c1]
0 take-empty-capsule[rov1,cap1,docking_station,c1,c2]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s6,cap1,wing_alpha,bio_vault,bio_vault]
0 take-empty-capsule[rov1,cap1,bio_vault,c2,c3]
0 take-empty-capsule[rov1,cap1,bio_vault,c0,c1]
0 take-empty-capsule[rov1,cap1,bio_vault,c1,c2]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s6,cap1,wing_alpha,pressure_stabilizer,bio_vault]
0 take-empty-capsule[rov1,cap1,pressure_stabilizer,c2,c3]
0 take-empty-capsule[rov1,cap1,pressure_stabilizer,c1,c2]
0 take-empty-capsule[rov1,cap1,pressure_stabilizer,c0,c1]
0 encapsulate-sample[rov1,s6,cap1,wing_alpha]
0 stabilize-capsule[rov1,s6,cap1,pressure_stabilizer]
0 store-sensitive-sample[rov1,s6,cap2,bio_vault,c1,c2]
0 store-sensitive-sample[rov1,s6,cap2,bio_vault,c2,c3]
0 store-sensitive-sample[rov1,s6,cap2,bio_vault,c0,c1]
0 pickup-sensitive-sample[rov1,s6,cap2,pressure_stabilizer,c2,c3]
0 pickup-sensitive-sample[rov1,s6,cap2,pressure_stabilizer,c1,c2]
0 pickup-sensitive-sample[rov1,s6,cap2,pressure_stabilizer,c0,c1]
0 drop-sensitive-sample[rov1,s6,cap2,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov1,s6,cap2,pressure_stabilizer,c0,c1]
0 drop-sensitive-sample[rov1,s6,cap2,pressure_stabilizer,c1,c2]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s6,cap2,wing_alpha,transfer_zone,bio_vault]
0 take-empty-capsule[rov1,cap2,transfer_zone,c2,c3]
0 take-empty-capsule[rov1,cap2,transfer_zone,c1,c2]
0 take-empty-capsule[rov1,cap2,transfer_zone,c0,c1]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s6,cap2,wing_alpha,docking_station,bio_vault]
0 take-empty-capsule[rov1,cap2,docking_station,c2,c3]
0 take-empty-capsule[rov1,cap2,docking_station,c1,c2]
0 take-empty-capsule[rov1,cap2,docking_station,c0,c1]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s6,cap2,wing_alpha,bio_vault,bio_vault]
0 take-empty-capsule[rov1,cap2,bio_vault,c2,c3]
0 take-empty-capsule[rov1,cap2,bio_vault,c1,c2]
0 take-empty-capsule[rov1,cap2,bio_vault,c0,c1]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s6,cap2,wing_alpha,pressure_stabilizer,bio_vault]
0 take-empty-capsule[rov1,cap2,pressure_stabilizer,c1,c2]
0 take-empty-capsule[rov1,cap2,pressure_stabilizer,c0,c1]
0 take-empty-capsule[rov1,cap2,pressure_stabilizer,c2,c3]
0 encapsulate-sample[rov1,s6,cap2,wing_alpha]
0 stabilize-capsule[rov1,s6,cap2,pressure_stabilizer]
0 pickup-sensitive-sample[rov1,s6,cap2,transfer_zone,c2,c3]
0 pickup-sensitive-sample[rov1,s6,cap2,transfer_zone,c1,c2]
0 pickup-sensitive-sample[rov1,s6,cap2,transfer_zone,c0,c1]
0 store-sensitive-sample[rov2,s6,cap2,bio_vault,c0,c1]
0 store-sensitive-sample[rov2,s6,cap2,bio_vault,c1,c2]
0 store-sensitive-sample[rov2,s6,cap2,bio_vault,c2,c3]
0 pickup-sensitive-sample[rov2,s6,cap2,pressure_stabilizer,c0,c1]
0 pickup-sensitive-sample[rov2,s6,cap2,pressure_stabilizer,c2,c3]
0 pickup-sensitive-sample[rov2,s6,cap2,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov2,s6,cap2,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov2,s6,cap2,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov2,s6,cap2,pressure_stabilizer,c0,c1]
0 pickup-sensitive-sample[rov2,s6,cap2,transfer_zone,c0,c1]
0 pickup-sensitive-sample[rov2,s6,cap2,transfer_zone,c1,c2]
0 pickup-sensitive-sample[rov2,s6,cap2,transfer_zone,c2,c3]
0 stabilize-capsule[rov2,s6,cap2,pressure_stabilizer]
0 __method_precondition_m_continue_sensitive_from_handover_ordering_0[s6,cap2,transfer_zone,bio_vault]
0 drop-sensitive-sample[rov1,s6,cap2,transfer_zone,c2,c3]
0 drop-sensitive-sample[rov1,s6,cap2,transfer_zone,c0,c1]
0 drop-sensitive-sample[rov1,s6,cap2,transfer_zone,c1,c2]
0 pickup-sensitive-sample[rov1,s6,cap1,transfer_zone,c2,c3]
0 pickup-sensitive-sample[rov1,s6,cap1,transfer_zone,c1,c2]
0 pickup-sensitive-sample[rov1,s6,cap1,transfer_zone,c0,c1]
0 store-sensitive-sample[rov2,s6,cap1,bio_vault,c2,c3]
0 store-sensitive-sample[rov2,s6,cap1,bio_vault,c1,c2]
0 store-sensitive-sample[rov2,s6,cap1,bio_vault,c0,c1]
0 pickup-sensitive-sample[rov2,s6,cap1,pressure_stabilizer,c0,c1]
0 pickup-sensitive-sample[rov2,s6,cap1,pressure_stabilizer,c1,c2]
0 pickup-sensitive-sample[rov2,s6,cap1,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov2,s6,cap1,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov2,s6,cap1,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov2,s6,cap1,pressure_stabilizer,c0,c1]
0 pickup-sensitive-sample[rov2,s6,cap1,transfer_zone,c0,c1]
0 pickup-sensitive-sample[rov2,s6,cap1,transfer_zone,c1,c2]
0 pickup-sensitive-sample[rov2,s6,cap1,transfer_zone,c2,c3]
0 stabilize-capsule[rov2,s6,cap1,pressure_stabilizer]
0 __method_precondition_m_continue_sensitive_from_handover_ordering_0[s6,cap1,transfer_zone,bio_vault]
0 drop-sensitive-sample[rov1,s6,cap1,transfer_zone,c2,c3]
0 drop-sensitive-sample[rov1,s6,cap1,transfer_zone,c0,c1]
0 drop-sensitive-sample[rov1,s6,cap1,transfer_zone,c1,c2]
0 __method_precondition_m_process_sensitive_sample_handover_ordering_0_split[s6,wing_alpha,transfer_zone]
0 __method_precondition_m_process_all_sensitive_recursive_ordering_0[s5]
0 mark-sensitive-done[s5]
0 store-sensitive-sample[rov1,s5,cap1,bio_vault,c2,c3]
0 store-sensitive-sample[rov1,s5,cap1,bio_vault,c0,c1]
0 store-sensitive-sample[rov1,s5,cap1,bio_vault,c1,c2]
0 pickup-sensitive-sample[rov1,s5,cap1,pressure_stabilizer,c1,c2]
0 pickup-sensitive-sample[rov1,s5,cap1,pressure_stabilizer,c0,c1]
0 pickup-sensitive-sample[rov1,s5,cap1,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov1,s5,cap1,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov1,s5,cap1,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov1,s5,cap1,pressure_stabilizer,c0,c1]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s5,cap1,wing_beta,transfer_zone,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s5,cap1,wing_beta,docking_station,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s5,cap1,wing_beta,bio_vault,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s5,cap1,wing_beta,pressure_stabilizer,bio_vault]
0 encapsulate-sample[rov1,s5,cap1,wing_beta]
0 stabilize-capsule[rov1,s5,cap1,pressure_stabilizer]
0 store-sensitive-sample[rov1,s5,cap2,bio_vault,c2,c3]
0 store-sensitive-sample[rov1,s5,cap2,bio_vault,c1,c2]
0 store-sensitive-sample[rov1,s5,cap2,bio_vault,c0,c1]
0 pickup-sensitive-sample[rov1,s5,cap2,pressure_stabilizer,c2,c3]
0 pickup-sensitive-sample[rov1,s5,cap2,pressure_stabilizer,c0,c1]
0 pickup-sensitive-sample[rov1,s5,cap2,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov1,s5,cap2,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov1,s5,cap2,pressure_stabilizer,c0,c1]
0 drop-sensitive-sample[rov1,s5,cap2,pressure_stabilizer,c1,c2]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s5,cap2,wing_beta,transfer_zone,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s5,cap2,wing_beta,docking_station,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s5,cap2,wing_beta,bio_vault,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s5,cap2,wing_beta,pressure_stabilizer,bio_vault]
0 encapsulate-sample[rov1,s5,cap2,wing_beta]
0 stabilize-capsule[rov1,s5,cap2,pressure_stabilizer]
0 store-sensitive-sample[rov2,s5,cap2,bio_vault,c0,c1]
0 store-sensitive-sample[rov2,s5,cap2,bio_vault,c2,c3]
0 store-sensitive-sample[rov2,s5,cap2,bio_vault,c1,c2]
0 pickup-sensitive-sample[rov2,s5,cap2,pressure_stabilizer,c2,c3]
0 pickup-sensitive-sample[rov2,s5,cap2,pressure_stabilizer,c1,c2]
0 pickup-sensitive-sample[rov2,s5,cap2,pressure_stabilizer,c0,c1]
0 drop-sensitive-sample[rov2,s5,cap2,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov2,s5,cap2,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov2,s5,cap2,pressure_stabilizer,c0,c1]
0 take-empty-capsule[rov2,cap2,docking_station,c2,c3]
0 take-empty-capsule[rov2,cap2,docking_station,c0,c1]
0 take-empty-capsule[rov2,cap2,docking_station,c1,c2]
0 take-empty-capsule[rov2,cap2,bio_vault,c2,c3]
0 take-empty-capsule[rov2,cap2,bio_vault,c1,c2]
0 take-empty-capsule[rov2,cap2,bio_vault,c0,c1]
0 take-empty-capsule[rov2,cap2,pressure_stabilizer,c0,c1]
0 take-empty-capsule[rov2,cap2,pressure_stabilizer,c1,c2]
0 take-empty-capsule[rov2,cap2,pressure_stabilizer,c2,c3]
0 take-empty-capsule[rov2,cap2,transfer_zone,c0,c1]
0 take-empty-capsule[rov2,cap2,transfer_zone,c1,c2]
0 take-empty-capsule[rov2,cap2,transfer_zone,c2,c3]
0 encapsulate-sample[rov2,s5,cap2,wing_beta]
0 stabilize-capsule[rov2,s5,cap2,pressure_stabilizer]
0 store-sensitive-sample[rov2,s5,cap1,bio_vault,c1,c2]
0 store-sensitive-sample[rov2,s5,cap1,bio_vault,c0,c1]
0 store-sensitive-sample[rov2,s5,cap1,bio_vault,c2,c3]
0 pickup-sensitive-sample[rov2,s5,cap1,pressure_stabilizer,c0,c1]
0 pickup-sensitive-sample[rov2,s5,cap1,pressure_stabilizer,c1,c2]
0 pickup-sensitive-sample[rov2,s5,cap1,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov2,s5,cap1,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov2,s5,cap1,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov2,s5,cap1,pressure_stabilizer,c0,c1]
0 take-empty-capsule[rov2,cap1,docking_station,c0,c1]
0 take-empty-capsule[rov2,cap1,docking_station,c2,c3]
0 take-empty-capsule[rov2,cap1,docking_station,c1,c2]
0 take-empty-capsule[rov2,cap1,bio_vault,c2,c3]
0 take-empty-capsule[rov2,cap1,bio_vault,c1,c2]
0 take-empty-capsule[rov2,cap1,bio_vault,c0,c1]
0 take-empty-capsule[rov2,cap1,pressure_stabilizer,c2,c3]
0 take-empty-capsule[rov2,cap1,pressure_stabilizer,c0,c1]
0 take-empty-capsule[rov2,cap1,pressure_stabilizer,c1,c2]
0 take-empty-capsule[rov2,cap1,transfer_zone,c0,c1]
0 take-empty-capsule[rov2,cap1,transfer_zone,c1,c2]
0 take-empty-capsule[rov2,cap1,transfer_zone,c2,c3]
0 encapsulate-sample[rov2,s5,cap1,wing_beta]
0 stabilize-capsule[rov2,s5,cap1,pressure_stabilizer]
0 __method_precondition_m_process_all_sensitive_recursive_ordering_0[s4]
0 mark-sensitive-done[s4]
0 store-sensitive-sample[rov1,s4,cap1,bio_vault,c1,c2]
0 store-sensitive-sample[rov1,s4,cap1,bio_vault,c2,c3]
0 store-sensitive-sample[rov1,s4,cap1,bio_vault,c0,c1]
0 pickup-sensitive-sample[rov1,s4,cap1,pressure_stabilizer,c2,c3]
0 pickup-sensitive-sample[rov1,s4,cap1,pressure_stabilizer,c1,c2]
0 pickup-sensitive-sample[rov1,s4,cap1,pressure_stabilizer,c0,c1]
0 drop-sensitive-sample[rov1,s4,cap1,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov1,s4,cap1,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov1,s4,cap1,pressure_stabilizer,c0,c1]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s4,cap1,wing_beta,transfer_zone,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s4,cap1,wing_beta,docking_station,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s4,cap1,wing_beta,bio_vault,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s4,cap1,wing_beta,pressure_stabilizer,bio_vault]
0 encapsulate-sample[rov1,s4,cap1,wing_beta]
0 stabilize-capsule[rov1,s4,cap1,pressure_stabilizer]
0 store-sensitive-sample[rov1,s4,cap2,bio_vault,c2,c3]
0 store-sensitive-sample[rov1,s4,cap2,bio_vault,c0,c1]
0 store-sensitive-sample[rov1,s4,cap2,bio_vault,c1,c2]
0 pickup-sensitive-sample[rov1,s4,cap2,pressure_stabilizer,c2,c3]
0 pickup-sensitive-sample[rov1,s4,cap2,pressure_stabilizer,c0,c1]
0 pickup-sensitive-sample[rov1,s4,cap2,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov1,s4,cap2,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov1,s4,cap2,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov1,s4,cap2,pressure_stabilizer,c0,c1]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s4,cap2,wing_beta,transfer_zone,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s4,cap2,wing_beta,docking_station,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s4,cap2,wing_beta,bio_vault,bio_vault]
0 __method_precondition_m_process_sensitive_sample_ordering_0[s4,cap2,wing_beta,pressure_stabilizer,bio_vault]
0 encapsulate-sample[rov1,s4,cap2,wing_beta]
0 stabilize-capsule[rov1,s4,cap2,pressure_stabilizer]
0 store-sensitive-sample[rov2,s4,cap1,bio_vault,c0,c1]
0 store-sensitive-sample[rov2,s4,cap1,bio_vault,c1,c2]
0 store-sensitive-sample[rov2,s4,cap1,bio_vault,c2,c3]
0 pickup-sensitive-sample[rov2,s4,cap1,pressure_stabilizer,c0,c1]
0 pickup-sensitive-sample[rov2,s4,cap1,pressure_stabilizer,c1,c2]
0 pickup-sensitive-sample[rov2,s4,cap1,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov2,s4,cap1,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov2,s4,cap1,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov2,s4,cap1,pressure_stabilizer,c0,c1]
0 encapsulate-sample[rov2,s4,cap1,wing_beta]
0 stabilize-capsule[rov2,s4,cap1,pressure_stabilizer]
0 store-sensitive-sample[rov2,s4,cap2,bio_vault,c2,c3]
0 store-sensitive-sample[rov2,s4,cap2,bio_vault,c1,c2]
0 store-sensitive-sample[rov2,s4,cap2,bio_vault,c0,c1]
0 pickup-sensitive-sample[rov2,s4,cap2,pressure_stabilizer,c2,c3]
0 pickup-sensitive-sample[rov2,s4,cap2,pressure_stabilizer,c1,c2]
0 pickup-sensitive-sample[rov2,s4,cap2,pressure_stabilizer,c0,c1]
0 drop-sensitive-sample[rov2,s4,cap2,pressure_stabilizer,c2,c3]
0 drop-sensitive-sample[rov2,s4,cap2,pressure_stabilizer,c1,c2]
0 drop-sensitive-sample[rov2,s4,cap2,pressure_stabilizer,c0,c1]
0 encapsulate-sample[rov2,s4,cap2,wing_beta]
0 stabilize-capsule[rov2,s4,cap2,pressure_stabilizer]
1 __top[]
1 process-all-regular-samples[]
1 m_process_all_regular_recursive_ordering_0_splitted_5[]
1 process-regular-sample[s1]
1 m_process_regular_sample_ordering_0_splitted_21[rov1,s1,bio_vault]
1 m_process_regular_sample_ordering_0_splitted_8[rov1,s1,bio_vault]
1 _splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20[rov1,s1,transfer_zone]
1 navigate-to[rov1,transfer_zone]
1 navigate-to[rov1,docking_station]
1 navigate-to[rov1,bio_vault]
1 navigate-to[rov1,pressure_stabilizer]
1 _splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20[rov1,s1,wing_alpha]
1 navigate-to[rov1,wing_alpha]
1 navigate-to[rov1,wing_beta]
1 m_process_regular_sample_ordering_0_splitted_21[rov2,s1,bio_vault]
1 navigate-to[rov2,docking_station]
1 navigate-to[rov2,bio_vault]
1 navigate-to[rov2,pressure_stabilizer]
1 navigate-to[rov2,wing_beta]
1 _splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20[rov2,s1,transfer_zone]
1 navigate-to[rov2,transfer_zone]
1 m_process_regular_sample_handover_ordering_0_splitted_22[s1,bio_vault]
1 m_continue_regular_from_handover_ordering_0_splitted_27[transfer_zone,bio_vault,s1]
1 m_continue_regular_from_handover_ordering_0_splitted_16[rov1,s1,bio_vault]
1 m_continue_regular_from_handover_ordering_0_splitted_3[rov1,s1,transfer_zone]
1 m_continue_regular_from_handover_ordering_0_splitted_16[rov2,s1,bio_vault]
1 m_continue_regular_from_handover_ordering_0_splitted_3[rov2,s1,transfer_zone]
1 m_bring_regular_to_handover_ordering_0_splitted_13[rov1,s1,transfer_zone]
1 _splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12[rov1,s1,wing_alpha]
1 m_continue_regular_from_handover_ordering_0_splitted_3[rov1,s1,wing_alpha]
1 m_bring_regular_to_handover_ordering_0_splitted_13[rov1,s1,wing_alpha]
1 _splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12[rov1,s1,transfer_zone]
1 process-regular-sample[s2]
1 m_process_regular_sample_ordering_0_splitted_21[rov1,s2,bio_vault]
1 m_process_regular_sample_ordering_0_splitted_8[rov1,s2,bio_vault]
1 _splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20[rov1,s2,transfer_zone]
1 _splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20[rov1,s2,wing_alpha]
1 m_process_regular_sample_ordering_0_splitted_21[rov2,s2,bio_vault]
1 _splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20[rov2,s2,transfer_zone]
1 m_process_regular_sample_handover_ordering_0_splitted_22[s2,bio_vault]
1 m_continue_regular_from_handover_ordering_0_splitted_27[transfer_zone,bio_vault,s2]
1 m_continue_regular_from_handover_ordering_0_splitted_16[rov1,s2,bio_vault]
1 m_continue_regular_from_handover_ordering_0_splitted_3[rov1,s2,transfer_zone]
1 m_continue_regular_from_handover_ordering_0_splitted_16[rov2,s2,bio_vault]
1 m_continue_regular_from_handover_ordering_0_splitted_3[rov2,s2,transfer_zone]
1 m_bring_regular_to_handover_ordering_0_splitted_13[rov1,s2,transfer_zone]
1 _splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12[rov1,s2,wing_alpha]
1 m_continue_regular_from_handover_ordering_0_splitted_3[rov1,s2,wing_alpha]
1 m_bring_regular_to_handover_ordering_0_splitted_13[rov1,s2,wing_alpha]
1 _splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12[rov1,s2,transfer_zone]
1 process-regular-sample[s3]
1 m_process_regular_sample_ordering_0_splitted_21[rov1,s3,bio_vault]
1 m_process_regular_sample_ordering_0_splitted_8[rov1,s3,bio_vault]
1 _splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20[rov1,s3,transfer_zone]
1 _splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20[rov1,s3,wing_alpha]
1 _splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20[rov1,s3,wing_beta]
1 m_process_regular_sample_ordering_0_splitted_21[rov2,s3,bio_vault]
1 m_process_regular_sample_ordering_0_splitted_8[rov2,s3,bio_vault]
1 _splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20[rov2,s3,wing_beta]
1 _splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20[rov2,s3,transfer_zone]
1 m_process_regular_sample_handover_ordering_0_splitted_22[s3,bio_vault]
1 m_continue_regular_from_handover_ordering_0_splitted_27[transfer_zone,bio_vault,s3]
1 m_continue_regular_from_handover_ordering_0_splitted_16[rov1,s3,bio_vault]
1 m_continue_regular_from_handover_ordering_0_splitted_3[rov1,s3,transfer_zone]
1 m_continue_regular_from_handover_ordering_0_splitted_16[rov2,s3,bio_vault]
1 m_continue_regular_from_handover_ordering_0_splitted_3[rov2,s3,transfer_zone]
1 m_bring_regular_to_handover_ordering_0_splitted_13[rov1,s3,transfer_zone]
1 _splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12[rov1,s3,wing_alpha]
1 m_continue_regular_from_handover_ordering_0_splitted_3[rov1,s3,wing_alpha]
1 m_bring_regular_to_handover_ordering_0_splitted_13[rov1,s3,wing_alpha]
1 _splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12[rov1,s3,transfer_zone]
1 m_process_all_regular_two_handover_ordering_0_splitted_30[]
1 m_process_all_regular_two_handover_ordering_0_splitted_19[s3]
1 _splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29[s1,s3,bio_vault]
1 continue-two-regular-from-handover[s1,s3,transfer_zone,bio_vault]
1 bring-two-regular-to-handover[s1,s3,transfer_zone]
1 continue-two-regular-from-handover[s1,s3,wing_alpha,bio_vault]
1 bring-two-regular-to-handover[s1,s3,wing_alpha]
1 _splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29[s2,s3,bio_vault]
1 continue-two-regular-from-handover[s2,s3,transfer_zone,bio_vault]
1 bring-two-regular-to-handover[s2,s3,transfer_zone]
1 continue-two-regular-from-handover[s2,s3,wing_alpha,bio_vault]
1 bring-two-regular-to-handover[s2,s3,wing_alpha]
1 m_process_all_regular_two_handover_ordering_0_splitted_19[s2]
1 _splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29[s3,s2,bio_vault]
1 continue-two-regular-from-handover[s3,s2,transfer_zone,bio_vault]
1 bring-two-regular-to-handover[s3,s2,transfer_zone]
1 continue-two-regular-from-handover[s3,s2,wing_alpha,bio_vault]
1 bring-two-regular-to-handover[s3,s2,wing_alpha]
1 _splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29[s1,s2,bio_vault]
1 continue-two-regular-from-handover[s1,s2,transfer_zone,bio_vault]
1 bring-two-regular-to-handover[s1,s2,transfer_zone]
1 continue-two-regular-from-handover[s1,s2,wing_alpha,bio_vault]
1 bring-two-regular-to-handover[s1,s2,wing_alpha]
1 m_process_all_regular_two_handover_ordering_0_splitted_19[s1]
1 _splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29[s2,s1,bio_vault]
1 continue-two-regular-from-handover[s2,s1,transfer_zone,bio_vault]
1 bring-two-regular-to-handover[s2,s1,transfer_zone]
1 continue-two-regular-from-handover[s2,s1,wing_alpha,bio_vault]
1 bring-two-regular-to-handover[s2,s1,wing_alpha]
1 _splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29[s3,s1,bio_vault]
1 continue-two-regular-from-handover[s3,s1,transfer_zone,bio_vault]
1 bring-two-regular-to-handover[s3,s1,transfer_zone]
1 continue-two-regular-from-handover[s3,s1,wing_alpha,bio_vault]
1 bring-two-regular-to-handover[s3,s1,wing_alpha]
1 process-all-sensitive-samples[]
1 m_process_all_sensitive_recursive_ordering_0_splitted_7[]
1 process-sensitive-sample[s6]
1 m_process_sensitive_sample_ordering_0_splitted_36[rov1,s6,cap1,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_34[rov1,s6,cap1,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_31[rov1,s6,cap1,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_10[rov1,cap1,s6,wing_alpha,bio_vault]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov1,cap1,transfer_zone]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov1,cap1,docking_station]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov1,cap1,bio_vault]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov1,cap1,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_36[rov1,s6,cap2,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_34[rov1,s6,cap2,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_31[rov1,s6,cap2,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_10[rov1,cap2,s6,wing_alpha,bio_vault]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov1,cap2,transfer_zone]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov1,cap2,docking_station]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov1,cap2,bio_vault]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov1,cap2,pressure_stabilizer]
1 _splitting_method_m_process_sensitive_sample_handover_ordering_0_splitted_25_splitted_32[s6,transfer_zone,pressure_stabilizer,bio_vault]
1 m_continue_sensitive_from_handover_ordering_0_splitted_35[transfer_zone,pressure_stabilizer,s6,cap2,bio_vault]
1 m_continue_sensitive_from_handover_ordering_0_splitted_33[rov1,s6,cap2,bio_vault]
1 m_continue_sensitive_from_handover_ordering_0_splitted_28[rov1,s6,cap2,pressure_stabilizer]
1 m_continue_sensitive_from_handover_ordering_0_splitted_17[rov1,s6,cap2,pressure_stabilizer]
1 m_continue_sensitive_from_handover_ordering_0_splitted_4[rov1,s6,cap2,transfer_zone]
1 m_continue_sensitive_from_handover_ordering_0_splitted_33[rov2,s6,cap2,bio_vault]
1 m_continue_sensitive_from_handover_ordering_0_splitted_28[rov2,s6,cap2,pressure_stabilizer]
1 m_continue_sensitive_from_handover_ordering_0_splitted_17[rov2,s6,cap2,pressure_stabilizer]
1 m_continue_sensitive_from_handover_ordering_0_splitted_4[rov2,s6,cap2,transfer_zone]
1 m_bring_sensitive_to_handover_ordering_0_splitted_26[rov1,s6,cap2,transfer_zone]
1 m_bring_sensitive_to_handover_ordering_0_splitted_2[rov1,cap2,s6,wing_alpha,transfer_zone]
1 _splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14[rov1,cap2,transfer_zone]
1 _splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14[rov1,cap2,docking_station]
1 _splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14[rov1,cap2,bio_vault]
1 _splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14[rov1,cap2,pressure_stabilizer]
1 m_continue_sensitive_from_handover_ordering_0_splitted_35[transfer_zone,pressure_stabilizer,s6,cap1,bio_vault]
1 m_continue_sensitive_from_handover_ordering_0_splitted_33[rov1,s6,cap1,bio_vault]
1 m_continue_sensitive_from_handover_ordering_0_splitted_28[rov1,s6,cap1,pressure_stabilizer]
1 m_continue_sensitive_from_handover_ordering_0_splitted_17[rov1,s6,cap1,pressure_stabilizer]
1 m_continue_sensitive_from_handover_ordering_0_splitted_4[rov1,s6,cap1,transfer_zone]
1 m_continue_sensitive_from_handover_ordering_0_splitted_33[rov2,s6,cap1,bio_vault]
1 m_continue_sensitive_from_handover_ordering_0_splitted_28[rov2,s6,cap1,pressure_stabilizer]
1 m_continue_sensitive_from_handover_ordering_0_splitted_17[rov2,s6,cap1,pressure_stabilizer]
1 m_continue_sensitive_from_handover_ordering_0_splitted_4[rov2,s6,cap1,transfer_zone]
1 m_bring_sensitive_to_handover_ordering_0_splitted_26[rov1,s6,cap1,transfer_zone]
1 m_bring_sensitive_to_handover_ordering_0_splitted_2[rov1,cap1,s6,wing_alpha,transfer_zone]
1 _splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14[rov1,cap1,transfer_zone]
1 _splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14[rov1,cap1,docking_station]
1 _splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14[rov1,cap1,bio_vault]
1 _splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14[rov1,cap1,pressure_stabilizer]
1 process-sensitive-sample[s5]
1 m_process_sensitive_sample_ordering_0_splitted_36[rov1,s5,cap1,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_34[rov1,s5,cap1,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_31[rov1,s5,cap1,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_10[rov1,cap1,s5,wing_beta,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_36[rov1,s5,cap2,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_34[rov1,s5,cap2,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_31[rov1,s5,cap2,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_10[rov1,cap2,s5,wing_beta,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_36[rov2,s5,cap2,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_34[rov2,s5,cap2,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_31[rov2,s5,cap2,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_10[rov2,cap2,s5,wing_beta,bio_vault]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov2,cap2,docking_station]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov2,cap2,bio_vault]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov2,cap2,pressure_stabilizer]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov2,cap2,transfer_zone]
1 m_process_sensitive_sample_ordering_0_splitted_36[rov2,s5,cap1,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_34[rov2,s5,cap1,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_31[rov2,s5,cap1,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_10[rov2,cap1,s5,wing_beta,bio_vault]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov2,cap1,docking_station]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov2,cap1,bio_vault]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov2,cap1,pressure_stabilizer]
1 _splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23[rov2,cap1,transfer_zone]
1 process-sensitive-sample[s4]
1 m_process_sensitive_sample_ordering_0_splitted_36[rov1,s4,cap1,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_34[rov1,s4,cap1,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_31[rov1,s4,cap1,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_10[rov1,cap1,s4,wing_beta,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_36[rov1,s4,cap2,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_34[rov1,s4,cap2,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_31[rov1,s4,cap2,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_10[rov1,cap2,s4,wing_beta,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_36[rov2,s4,cap1,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_34[rov2,s4,cap1,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_31[rov2,s4,cap1,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_10[rov2,cap1,s4,wing_beta,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_36[rov2,s4,cap2,bio_vault]
1 m_process_sensitive_sample_ordering_0_splitted_34[rov2,s4,cap2,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_31[rov2,s4,cap2,pressure_stabilizer]
1 m_process_sensitive_sample_ordering_0_splitted_10[rov2,cap2,s4,wing_beta,bio_vault]

;; initial abstract task
476

;; methods
775
<__top_method;complete-mission[];m_complete_mission_ordering_0;0;-1,-2>
476
581 477 -1
-1
m_process_all_regular_base_ordering_0
477
0 -1
-1
m_process_all_regular_recursive_ordering_0
477
478 477 -1
0 1 -1
_splitting_method_m_process_all_regular_recursive_ordering_0_splitted_5
478
1 479 2 -1
0 2 0 1 1 2 -1
m_process_regular_sample_ordering_0
479
481 485 480 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
480
3 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
480
4 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
480
5 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_8
481
9 483 482 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
482
6 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
482
7 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
482
8 -1
-1
m_navigate_already_there_ordering_0
483
10 -1
-1
m_navigate_direct_connected_ordering_0
483
11 12 -1
0 1 -1
m_navigate_direct_connected_ordering_0
483
13 14 -1
0 1 -1
m_navigate_direct_connected_ordering_0
483
15 16 -1
0 1 -1
m_navigate_direct_narrow_ordering_0
483
17 18 -1
0 1 -1
m_navigate_recursive_connected_ordering_0
483
19 22 20 483 21 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
483
23 26 24 483 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
483
27 22 28 483 21 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
483
29 26 30 483 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
483
31 34 32 483 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
483
35 34 36 483 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
483
37 34 38 483 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
483
39 42 40 483 41 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
483
43 42 44 483 41 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_narrow_ordering_0
483
45 34 46 483 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_already_there_ordering_0
484
11 -1
-1
m_navigate_direct_connected_ordering_0
484
10 38 -1
0 1 -1
m_navigate_recursive_connected_ordering_0
484
19 22 20 484 21 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
484
27 22 28 484 21 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
484
47 26 16 484 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
484
48 50 14 484 49 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
484
23 26 24 484 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
484
29 26 30 484 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
484
35 34 36 484 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
484
31 34 32 484 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
484
43 42 44 484 41 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
484
39 42 40 484 41 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
484
51 53 12 484 52 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_narrow_ordering_0
484
54 56 18 484 55 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_narrow_ordering_0
484
45 34 46 484 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_already_there_ordering_0
485
57 -1
-1
m_navigate_direct_connected_ordering_0
485
15 24 -1
0 1 -1
m_navigate_direct_connected_ordering_0
485
58 28 -1
0 1 -1
m_navigate_recursive_connected_ordering_0
485
19 22 20 485 21 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
485
47 26 16 485 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
485
29 26 30 485 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
485
48 50 14 485 49 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
485
35 34 36 485 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
485
31 34 32 485 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
485
37 34 38 485 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
485
43 42 44 485 41 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
485
39 42 40 485 41 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
485
51 53 12 485 52 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_narrow_ordering_0
485
45 34 46 485 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_narrow_ordering_0
485
54 56 18 485 55 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_already_there_ordering_0
486
58 -1
-1
m_navigate_direct_connected_ordering_0
486
15 30 -1
0 1 -1
m_navigate_direct_connected_ordering_0
486
57 44 -1
0 1 -1
m_navigate_recursive_connected_ordering_0
486
27 22 28 486 21 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
486
19 22 20 486 21 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
486
47 26 16 486 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
486
48 50 14 486 49 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
486
23 26 24 486 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
486
35 34 36 486 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
486
37 34 38 486 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
486
31 34 32 486 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
486
39 42 40 486 41 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
486
51 53 12 486 52 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_narrow_ordering_0
486
54 56 18 486 55 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_narrow_ordering_0
486
45 34 46 486 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
_splitting_method_m_process_regular_sample_ordering_0_splitted_8
481
62 488 487 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
487
59 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
487
60 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
487
61 -1
-1
m_navigate_already_there_ordering_0
488
17 -1
-1
m_navigate_direct_narrow_ordering_0
488
10 46 -1
0 1 -1
m_navigate_recursive_connected_ordering_0
488
27 22 28 488 21 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
488
19 22 20 488 21 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
488
47 26 16 488 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
488
48 50 14 488 49 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
488
23 26 24 488 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
488
29 26 30 488 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
488
31 34 32 488 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
488
37 34 38 488 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
488
43 42 44 488 41 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
488
39 42 40 488 41 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
488
51 53 12 488 52 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
488
35 34 36 488 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_narrow_ordering_0
488
54 56 18 488 55 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_already_there_ordering_0
489
13 -1
-1
m_navigate_direct_connected_ordering_0
489
10 32 -1
0 1 -1
m_navigate_recursive_connected_ordering_0
489
27 22 28 489 21 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
489
19 22 20 489 21 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
489
47 26 16 489 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
489
48 50 14 489 49 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
489
23 26 24 489 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
489
29 26 30 489 25 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
489
37 34 38 489 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
489
43 42 44 489 41 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
489
39 42 40 489 41 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
489
51 53 12 489 52 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
489
35 34 36 489 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_narrow_ordering_0
489
45 34 46 489 33 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_narrow_ordering_0
489
54 56 18 489 55 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
<m_process_regular_sample_ordering_0;m_process_regular_sample_ordering_0_splitted_8[rov2,s1,bio_vault];_splitting_method_m_process_regular_sample_ordering_0_splitted_8;0;-1,-2,-3,1,2>
479
9 496 495 492 490 -1
2 4 2 3 3 4 0 4 0 2 0 3 0 1 1 4 1 2 1 3 -1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
490
63 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
490
64 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
490
65 -1
-1
m_navigate_already_there_ordering_0
491
66 -1
-1
m_navigate_direct_connected_ordering_0
491
67 68 -1
0 1 -1
m_navigate_recursive_connected_ordering_0
491
69 72 70 491 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
491
73 72 74 491 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
491
75 72 76 491 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
491
77 80 78 491 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
491
81 80 82 491 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
491
83 86 84 491 85 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
491
87 90 88 491 89 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
491
91 94 92 491 93 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
491
95 94 96 491 93 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
491
97 100 98 491 99 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
491
101 100 102 491 99 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_already_there_ordering_0
492
103 -1
-1
m_navigate_direct_connected_ordering_0
492
104 102 -1
0 1 -1
m_navigate_direct_connected_ordering_0
492
105 76 -1
0 1 -1
m_navigate_recursive_connected_ordering_0
492
69 72 70 492 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
492
73 72 74 492 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
492
106 80 68 492 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
492
77 80 78 492 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
492
81 80 82 492 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
492
83 86 84 492 85 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
492
87 90 88 492 89 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
492
91 94 92 492 93 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
492
95 94 96 492 93 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
492
97 100 98 492 99 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_already_there_ordering_0
493
104 -1
-1
m_navigate_direct_connected_ordering_0
493
103 92 -1
0 1 -1
m_navigate_direct_connected_ordering_0
493
105 70 -1
0 1 -1
m_navigate_recursive_connected_ordering_0
493
73 72 74 493 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
493
83 86 84 493 85 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
493
75 72 76 493 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
493
77 80 78 493 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
493
81 80 82 493 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
493
106 80 68 493 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
493
87 90 88 493 89 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
493
95 94 96 493 93 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
493
97 100 98 493 99 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
493
101 100 102 493 99 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_already_there_ordering_0
494
107 -1
-1
m_navigate_direct_connected_ordering_0
494
67 78 -1
0 1 -1
m_navigate_recursive_connected_ordering_0
494
69 72 70 494 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
494
73 72 74 494 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
494
83 86 84 494 85 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
494
75 72 76 494 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
494
106 80 68 494 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
494
81 80 82 494 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
494
95 94 96 494 93 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
494
91 94 92 494 93 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
494
87 90 88 494 89 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
494
97 100 98 494 99 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
494
101 100 102 494 99 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
495
108 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
495
109 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
495
110 -1
-1
m_navigate_already_there_ordering_0
496
67 -1
-1
m_navigate_direct_connected_ordering_0
496
105 74 -1
0 1 -1
m_navigate_direct_connected_ordering_0
496
107 84 -1
0 1 -1
m_navigate_direct_connected_ordering_0
496
66 88 -1
0 1 -1
m_navigate_recursive_connected_ordering_0
496
69 72 70 496 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
496
77 80 78 496 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
496
75 72 76 496 71 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
496
81 80 82 496 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
496
106 80 68 496 79 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
496
91 94 92 496 93 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
496
95 94 96 496 93 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
496
97 100 98 496 99 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_navigate_recursive_connected_ordering_0
496
101 100 102 496 99 -1
0 2 0 4 0 3 0 1 2 3 3 4 1 2 -1
m_process_regular_sample_handover_ordering_0
479
1 497 -1
0 1 -1
<<<<_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_22;continue-regular-from-handover[s1,transfer_zone,bio_vault];m_continue_regular_from_handover_ordering_0;2;0,1,-1,-2>;m_process_regular_sample_handover_ordering_0_splitted_9[s1,transfer_zone];_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_9;0;-1,1,2,3>;bring-regular-to-handover[s1,transfer_zone];m_bring_regular_to_handover_ordering_0;1;0,-1,-2,-3,-4,2,3>;m_bring_regular_to_handover_ordering_0_splitted_1[rov1,s1,transfer_zone];_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1;2;0,1,-1,-2,-3,3,4,5,6>
497
111 1 111 488 504 483 503 9 498 -1
0 8 0 6 0 7 0 4 0 1 0 5 0 2 0 3 6 8 6 7 7 8 4 8 4 6 4 7 4 5 1 8 1 6 1 7 1 4 1 5 1 2 1 3 5 8 5 6 5 7 2 8 2 6 2 7 2 4 2 5 2 3 3 8 3 6 3 7 3 4 3 5 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_27
498
483 500 485 499 -1
1 2 2 3 0 1 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
499
3 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
499
4 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
499
5 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
500
6 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
500
7 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
500
8 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_27
498
496 502 492 501 -1
1 2 2 3 0 1 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
501
63 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
501
64 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
501
65 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
502
108 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
502
109 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
502
110 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
503
112 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
503
113 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
503
114 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
504
59 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
504
60 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
504
61 -1
-1
<<<<<_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_22;continue-regular-from-handover[s1,wing_alpha,bio_vault];m_continue_regular_from_handover_ordering_0;2;0,1,-1,-2>;m_continue_regular_from_handover_ordering_0_splitted_27[wing_alpha,bio_vault,s1];_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_27;3;0,1,2,-1,-2,-3,-4>;m_process_regular_sample_handover_ordering_0_splitted_9[s1,wing_alpha];_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_9;0;-1,1,2,3,4,5,6>;bring-regular-to-handover[s1,wing_alpha];m_bring_regular_to_handover_ordering_0;1;0,-1,-2,-3,-4,2,3,4,5,6>;m_bring_regular_to_handover_ordering_0_splitted_1[rov1,s1,wing_alpha];_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1;2;0,1,-1,-2,-3,3,4,5,6,7,8,9>
497
115 1 115 483 507 488 506 62 488 505 485 499 -1
0 11 0 6 0 7 0 9 0 10 0 8 0 4 0 1 0 5 0 2 0 3 6 11 6 7 6 9 6 10 6 8 7 11 7 9 7 10 7 8 9 10 10 11 8 9 4 11 4 6 4 7 4 9 4 10 4 8 4 5 1 11 1 6 1 7 1 9 1 10 1 8 1 4 1 5 1 2 1 3 5 11 5 6 5 7 5 9 5 10 5 8 2 11 2 6 2 7 2 9 2 10 2 8 2 4 2 5 2 3 3 11 3 6 3 7 3 9 3 10 3 8 3 4 3 5 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
505
59 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
505
60 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
505
61 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
506
116 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
506
117 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
506
118 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
507
6 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
507
7 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
507
8 -1
-1
_splitting_method_m_process_all_regular_recursive_ordering_0_splitted_5
478
119 508 120 -1
0 2 0 1 1 2 -1
m_process_regular_sample_ordering_0
508
510 485 509 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
509
121 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
509
122 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
509
123 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_8
510
127 483 511 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
511
124 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
511
125 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
511
126 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_8
510
131 488 512 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
512
128 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
512
129 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
512
130 -1
-1
<m_process_regular_sample_ordering_0;m_process_regular_sample_ordering_0_splitted_8[rov2,s2,bio_vault];_splitting_method_m_process_regular_sample_ordering_0_splitted_8;0;-1,-2,-3,1,2>
508
127 496 514 492 513 -1
2 4 2 3 3 4 0 4 0 2 0 3 0 1 1 4 1 2 1 3 -1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
513
132 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
513
133 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
513
134 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
514
135 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
514
136 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
514
137 -1
-1
m_process_regular_sample_handover_ordering_0
508
119 515 -1
0 1 -1
<<<<_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_22;continue-regular-from-handover[s2,transfer_zone,bio_vault];m_continue_regular_from_handover_ordering_0;2;0,1,-1,-2>;m_process_regular_sample_handover_ordering_0_splitted_9[s2,transfer_zone];_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_9;0;-1,1,2,3>;bring-regular-to-handover[s2,transfer_zone];m_bring_regular_to_handover_ordering_0;1;0,-1,-2,-3,-4,2,3>;m_bring_regular_to_handover_ordering_0_splitted_1[rov1,s2,transfer_zone];_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1;2;0,1,-1,-2,-3,3,4,5,6>
515
138 119 138 488 522 483 521 127 516 -1
0 8 0 6 0 7 0 4 0 1 0 5 0 2 0 3 6 8 6 7 7 8 4 8 4 6 4 7 4 5 1 8 1 6 1 7 1 4 1 5 1 2 1 3 5 8 5 6 5 7 2 8 2 6 2 7 2 4 2 5 2 3 3 8 3 6 3 7 3 4 3 5 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_27
516
483 518 485 517 -1
1 2 2 3 0 1 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
517
121 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
517
122 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
517
123 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
518
124 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
518
125 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
518
126 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_27
516
496 520 492 519 -1
1 2 2 3 0 1 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
519
132 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
519
133 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
519
134 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
520
135 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
520
136 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
520
137 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
521
139 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
521
140 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
521
141 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
522
128 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
522
129 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
522
130 -1
-1
<<<<<_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_22;continue-regular-from-handover[s2,wing_alpha,bio_vault];m_continue_regular_from_handover_ordering_0;2;0,1,-1,-2>;m_continue_regular_from_handover_ordering_0_splitted_27[wing_alpha,bio_vault,s2];_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_27;3;0,1,2,-1,-2,-3,-4>;m_process_regular_sample_handover_ordering_0_splitted_9[s2,wing_alpha];_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_9;0;-1,1,2,3,4,5,6>;bring-regular-to-handover[s2,wing_alpha];m_bring_regular_to_handover_ordering_0;1;0,-1,-2,-3,-4,2,3,4,5,6>;m_bring_regular_to_handover_ordering_0_splitted_1[rov1,s2,wing_alpha];_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1;2;0,1,-1,-2,-3,3,4,5,6,7,8,9>
515
142 119 142 483 525 488 524 131 488 523 485 517 -1
0 11 0 6 0 7 0 9 0 10 0 8 0 4 0 1 0 5 0 2 0 3 6 11 6 7 6 9 6 10 6 8 7 11 7 9 7 10 7 8 9 10 10 11 8 9 4 11 4 6 4 7 4 9 4 10 4 8 4 5 1 11 1 6 1 7 1 9 1 10 1 8 1 4 1 5 1 2 1 3 5 11 5 6 5 7 5 9 5 10 5 8 2 11 2 6 2 7 2 9 2 10 2 8 2 4 2 5 2 3 3 11 3 6 3 7 3 9 3 10 3 8 3 4 3 5 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
523
128 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
523
129 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
523
130 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
524
143 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
524
144 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
524
145 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
525
124 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
525
125 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
525
126 -1
-1
_splitting_method_m_process_all_regular_recursive_ordering_0_splitted_5
478
146 526 147 -1
0 2 0 1 1 2 -1
m_process_regular_sample_ordering_0
526
528 485 527 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
527
148 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
527
149 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
527
150 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_8
528
154 483 529 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
529
151 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
529
152 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
529
153 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_8
528
158 488 530 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
530
155 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
530
156 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
530
157 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_8
528
162 489 531 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
531
159 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
531
160 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
531
161 -1
-1
m_process_regular_sample_ordering_0
526
533 492 532 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
532
163 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
532
164 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_21
532
165 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_8
533
162 494 534 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
534
166 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
534
167 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
534
168 -1
-1
_splitting_method_m_process_regular_sample_ordering_0_splitted_8
533
154 496 535 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
535
169 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
535
170 -1
-1
_splitting_method__splitting_method_m_process_regular_sample_ordering_0_splitted_8_splitted_20
535
171 -1
-1
m_process_regular_sample_handover_ordering_0
526
146 536 -1
0 1 -1
<<<<_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_22;continue-regular-from-handover[s3,transfer_zone,bio_vault];m_continue_regular_from_handover_ordering_0;2;0,1,-1,-2>;m_process_regular_sample_handover_ordering_0_splitted_9[s3,transfer_zone];_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_9;0;-1,1,2,3>;bring-regular-to-handover[s3,transfer_zone];m_bring_regular_to_handover_ordering_0;1;0,-1,-2,-3,-4,2,3>;m_bring_regular_to_handover_ordering_0_splitted_1[rov1,s3,transfer_zone];_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1;2;0,1,-1,-2,-3,3,4,5,6>
536
172 146 172 488 543 483 542 154 537 -1
0 8 0 6 0 7 0 4 0 1 0 5 0 2 0 3 6 8 6 7 7 8 4 8 4 6 4 7 4 5 1 8 1 6 1 7 1 4 1 5 1 2 1 3 5 8 5 6 5 7 2 8 2 6 2 7 2 4 2 5 2 3 3 8 3 6 3 7 3 4 3 5 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_27
537
483 539 485 538 -1
1 2 2 3 0 1 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
538
148 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
538
149 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
538
150 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
539
151 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
539
152 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
539
153 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_27
537
496 541 492 540 -1
1 2 2 3 0 1 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
540
163 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
540
164 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_16
540
165 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
541
169 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
541
170 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
541
171 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
542
173 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
542
174 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
542
175 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
543
155 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
543
156 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
543
157 -1
-1
<<<<<_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_22;continue-regular-from-handover[s3,wing_alpha,bio_vault];m_continue_regular_from_handover_ordering_0;2;0,1,-1,-2>;m_continue_regular_from_handover_ordering_0_splitted_27[wing_alpha,bio_vault,s3];_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_27;3;0,1,2,-1,-2,-3,-4>;m_process_regular_sample_handover_ordering_0_splitted_9[s3,wing_alpha];_splitting_method_m_process_regular_sample_handover_ordering_0_splitted_9;0;-1,1,2,3,4,5,6>;bring-regular-to-handover[s3,wing_alpha];m_bring_regular_to_handover_ordering_0;1;0,-1,-2,-3,-4,2,3,4,5,6>;m_bring_regular_to_handover_ordering_0_splitted_1[rov1,s3,wing_alpha];_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1;2;0,1,-1,-2,-3,3,4,5,6,7,8,9>
536
176 146 176 483 546 488 545 158 488 544 485 538 -1
0 11 0 6 0 7 0 9 0 10 0 8 0 4 0 1 0 5 0 2 0 3 6 11 6 7 6 9 6 10 6 8 7 11 7 9 7 10 7 8 9 10 10 11 8 9 4 11 4 6 4 7 4 9 4 10 4 8 4 5 1 11 1 6 1 7 1 9 1 10 1 8 1 4 1 5 1 2 1 3 5 11 5 6 5 7 5 9 5 10 5 8 2 11 2 6 2 7 2 9 2 10 2 8 2 4 2 5 2 3 3 11 3 6 3 7 3 9 3 10 3 8 3 4 3 5 -1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
544
155 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
544
156 -1
-1
_splitting_method_m_continue_regular_from_handover_ordering_0_splitted_3
544
157 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
545
177 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
545
178 -1
-1
_splitting_method_m_bring_regular_to_handover_ordering_0_splitted_13
545
179 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
546
151 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
546
152 -1
-1
_splitting_method__splitting_method_m_bring_regular_to_handover_ordering_0_splitted_1_splitted_12
546
153 -1
-1
m_process_all_regular_two_handover_ordering_0
477
547 477 -1
0 1 -1
_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_30
547
146 548 147 -1
1 2 0 1 0 2 -1
<_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_19;m_process_all_regular_two_handover_ordering_0_splitted_6[s1,s3];_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6;1;0,-1,2>
548
1 549 2 -1
1 2 0 1 0 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s1,s3,transfer_zone,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s1,s3,transfer_zone];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
549
186 184 551 550 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
550
180 483 6 152 485 5 149 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
550
181 483 8 151 485 4 148 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
550
182 496 109 171 492 63 163 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
550
183 496 108 170 492 64 165 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
551
185 488 61 483 112 488 157 483 173 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
551
185 488 60 483 113 488 157 483 173 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
551
185 488 59 483 114 488 157 483 173 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
551
185 488 61 483 112 488 156 483 174 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
551
185 488 60 483 113 488 156 483 174 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
551
185 488 59 483 114 488 156 483 174 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
551
185 488 61 483 112 488 155 483 175 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
551
185 488 60 483 113 488 155 483 175 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
551
185 488 59 483 114 488 155 483 175 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s1,s3,wing_alpha,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s1,s3,wing_alpha];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
549
190 184 553 552 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
552
187 488 59 157 485 5 149 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
552
188 488 61 156 485 4 148 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
553
189 483 7 488 116 483 152 488 177 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
553
189 483 8 488 117 483 152 488 177 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
553
189 483 6 488 118 483 152 488 177 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
553
189 483 7 488 116 483 151 488 178 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
553
189 483 8 488 117 483 151 488 178 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
553
189 483 6 488 118 483 151 488 178 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
553
189 483 7 488 116 483 153 488 179 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
553
189 483 8 488 117 483 153 488 179 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
553
189 483 6 488 118 483 153 488 179 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
<_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_19;m_process_all_regular_two_handover_ordering_0_splitted_6[s2,s3];_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6;1;0,-1,2>
548
119 554 120 -1
1 2 0 1 0 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s2,s3,transfer_zone,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s2,s3,transfer_zone];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
554
197 195 556 555 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
555
191 483 125 151 485 122 148 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
555
192 483 124 152 485 121 149 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
555
193 496 136 171 492 132 163 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
555
194 496 137 170 492 133 165 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
556
196 488 130 483 139 488 157 483 173 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
556
196 488 128 483 140 488 157 483 173 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
556
196 488 129 483 141 488 157 483 173 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
556
196 488 130 483 139 488 156 483 174 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
556
196 488 128 483 140 488 156 483 174 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
556
196 488 129 483 141 488 156 483 174 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
556
196 488 130 483 139 488 155 483 175 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
556
196 488 128 483 140 488 155 483 175 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
556
196 488 129 483 141 488 155 483 175 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s2,s3,wing_alpha,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s2,s3,wing_alpha];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
554
201 195 558 557 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
557
198 488 129 157 485 121 149 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
557
199 488 130 156 485 122 148 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
558
200 483 125 488 143 483 152 488 177 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
558
200 483 124 488 144 483 152 488 177 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
558
200 483 126 488 145 483 152 488 177 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
558
200 483 125 488 143 483 151 488 178 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
558
200 483 124 488 144 483 151 488 178 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
558
200 483 126 488 145 483 151 488 178 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
558
200 483 125 488 143 483 153 488 179 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
558
200 483 124 488 144 483 153 488 179 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
558
200 483 126 488 145 483 153 488 179 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_30
547
119 559 120 -1
1 2 0 1 0 2 -1
<_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_19;m_process_all_regular_two_handover_ordering_0_splitted_6[s3,s2];_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6;1;0,-1,2>
559
146 560 147 -1
1 2 0 1 0 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s3,s2,transfer_zone,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s3,s2,transfer_zone];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
560
208 206 562 561 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
561
202 483 153 125 485 148 123 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
561
203 483 152 126 485 150 121 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
561
204 496 170 135 492 164 133 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
561
205 496 169 136 492 163 134 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
562
207 488 157 483 173 488 130 483 139 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
562
207 488 156 483 174 488 130 483 139 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
562
207 488 155 483 175 488 130 483 139 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
562
207 488 157 483 173 488 128 483 140 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
562
207 488 156 483 174 488 128 483 140 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
562
207 488 155 483 175 488 128 483 140 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
562
207 488 157 483 173 488 129 483 141 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
562
207 488 156 483 174 488 129 483 141 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
562
207 488 155 483 175 488 129 483 141 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s3,s2,wing_alpha,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s3,s2,wing_alpha];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
560
212 206 564 563 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
563
209 488 155 130 485 148 123 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
563
210 488 157 128 485 150 121 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
564
211 483 152 488 177 483 125 488 143 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
564
211 483 151 488 178 483 125 488 143 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
564
211 483 153 488 179 483 125 488 143 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
564
211 483 152 488 177 483 124 488 144 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
564
211 483 151 488 178 483 124 488 144 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
564
211 483 153 488 179 483 124 488 144 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
564
211 483 152 488 177 483 126 488 145 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
564
211 483 151 488 178 483 126 488 145 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
564
211 483 153 488 179 483 126 488 145 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
<_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_19;m_process_all_regular_two_handover_ordering_0_splitted_6[s1,s2];_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6;1;0,-1,2>
559
1 565 2 -1
1 2 0 1 0 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s1,s2,transfer_zone,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s1,s2,transfer_zone];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
565
219 217 567 566 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
566
213 483 8 126 485 4 121 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
566
214 483 6 125 485 5 123 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
566
215 496 109 135 492 63 133 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
566
216 496 108 136 492 64 134 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
567
218 488 61 483 112 488 130 483 139 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
567
218 488 60 483 113 488 130 483 139 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
567
218 488 59 483 114 488 130 483 139 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
567
218 488 61 483 112 488 128 483 140 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
567
218 488 60 483 113 488 128 483 140 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
567
218 488 59 483 114 488 128 483 140 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
567
218 488 61 483 112 488 129 483 141 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
567
218 488 60 483 113 488 129 483 141 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
567
218 488 59 483 114 488 129 483 141 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s1,s2,wing_alpha,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s1,s2,wing_alpha];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
565
223 217 569 568 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
568
220 488 59 130 485 5 123 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
568
221 488 61 128 485 4 121 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
569
222 483 7 488 116 483 125 488 143 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
569
222 483 8 488 117 483 125 488 143 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
569
222 483 6 488 118 483 125 488 143 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
569
222 483 7 488 116 483 124 488 144 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
569
222 483 8 488 117 483 124 488 144 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
569
222 483 6 488 118 483 124 488 144 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
569
222 483 7 488 116 483 126 488 145 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
569
222 483 8 488 117 483 126 488 145 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
569
222 483 6 488 118 483 126 488 145 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_30
547
1 570 2 -1
1 2 0 1 0 2 -1
<_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_19;m_process_all_regular_two_handover_ordering_0_splitted_6[s2,s1];_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6;1;0,-1,2>
570
119 571 120 -1
1 2 0 1 0 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s2,s1,transfer_zone,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s2,s1,transfer_zone];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
571
230 228 573 572 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
572
224 483 125 7 485 122 5 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
572
225 483 124 8 485 121 3 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
572
226 496 136 110 492 132 64 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
572
227 496 137 109 492 133 65 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
573
229 488 130 483 139 488 61 483 112 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
573
229 488 128 483 140 488 61 483 112 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
573
229 488 129 483 141 488 61 483 112 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
573
229 488 130 483 139 488 60 483 113 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
573
229 488 128 483 140 488 60 483 113 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
573
229 488 129 483 141 488 60 483 113 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
573
229 488 130 483 139 488 59 483 114 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
573
229 488 128 483 140 488 59 483 114 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
573
229 488 129 483 141 488 59 483 114 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s2,s1,wing_alpha,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s2,s1,wing_alpha];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
571
234 228 575 574 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
574
231 488 129 61 485 121 3 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
574
232 488 130 60 485 122 5 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
575
233 483 125 488 143 483 7 488 116 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
575
233 483 124 488 144 483 7 488 116 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
575
233 483 126 488 145 483 7 488 116 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
575
233 483 125 488 143 483 8 488 117 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
575
233 483 124 488 144 483 8 488 117 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
575
233 483 126 488 145 483 8 488 117 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
575
233 483 125 488 143 483 6 488 118 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
575
233 483 124 488 144 483 6 488 118 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
575
233 483 126 488 145 483 6 488 118 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
<_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_19;m_process_all_regular_two_handover_ordering_0_splitted_6[s3,s1];_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6;1;0,-1,2>
570
146 576 147 -1
1 2 0 1 0 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s3,s1,transfer_zone,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s3,s1,transfer_zone];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
576
241 239 578 577 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
577
235 483 153 8 485 148 3 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
577
236 483 152 7 485 150 5 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
577
237 496 169 109 492 163 65 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
577
238 496 170 110 492 164 64 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
578
240 488 157 483 173 488 61 483 112 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
578
240 488 156 483 174 488 61 483 112 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
578
240 488 155 483 175 488 61 483 112 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
578
240 488 157 483 173 488 60 483 113 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
578
240 488 156 483 174 488 60 483 113 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
578
240 488 155 483 175 488 60 483 113 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
578
240 488 157 483 173 488 59 483 114 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
578
240 488 156 483 174 488 59 483 114 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
578
240 488 155 483 175 488 59 483 114 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
<<_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_29;process-two-regular-samples-via-handover[s3,s1,wing_alpha,bio_vault];m_process_two_regular_samples_via_handover_ordering_0;1;0,-1,-2,-3>;_splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18[s3,s1,wing_alpha];_splitting_method__splitting_method_m_process_all_regular_two_handover_ordering_0_splitted_6_splitted_18;0;-1,1,2,3>
576
245 239 580 579 -1
0 3 0 1 0 2 1 3 1 2 2 3 -1
m_continue_two_regular_from_handover_ordering_0
579
242 488 155 61 485 148 3 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_continue_two_regular_from_handover_ordering_0
579
243 488 157 60 485 150 5 -1
0 6 0 5 0 3 0 2 0 4 0 1 5 6 3 4 2 3 4 5 1 2 -1
m_bring_two_regular_to_handover_ordering_0
580
244 483 152 488 177 483 7 488 116 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
580
244 483 151 488 178 483 7 488 116 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
580
244 483 153 488 179 483 7 488 116 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
580
244 483 152 488 177 483 8 488 117 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
580
244 483 151 488 178 483 8 488 117 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
580
244 483 153 488 179 483 8 488 117 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
580
244 483 152 488 177 483 6 488 118 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
580
244 483 151 488 178 483 6 488 118 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_bring_two_regular_to_handover_ordering_0
580
244 483 153 488 179 483 6 488 118 -1
0 8 0 6 0 4 0 2 0 7 0 5 0 3 0 1 6 7 4 5 2 3 7 8 5 6 3 4 1 2 -1
m_process_all_sensitive_base_ordering_0
581
246 -1
-1
m_process_all_sensitive_recursive_ordering_0
581
582 581 -1
0 1 -1
_splitting_method_m_process_all_sensitive_recursive_ordering_0_splitted_7
582
247 583 248 -1
0 2 0 1 1 2 -1
<m_process_sensitive_sample_ordering_0;m_process_sensitive_sample_ordering_0_splitted_24[rov1,s6,cap1,bio_vault];_splitting_method_m_process_sensitive_sample_ordering_0_splitted_24;0;-1,-2,-3,1,2,3,4,5,6>
583
587 488 274 486 586 275 585 485 584 -1
6 7 4 5 0 8 0 6 0 4 0 5 0 7 0 3 0 2 0 1 5 6 7 8 3 4 2 8 2 6 2 4 2 5 2 7 2 3 1 8 1 6 1 4 1 5 1 7 1 3 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
584
249 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
584
250 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
584
251 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
585
252 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
585
253 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
585
254 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
586
255 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
586
256 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
586
257 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
587
258 483 588 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
588
259 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
588
260 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
588
261 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
587
262 484 589 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
589
263 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
589
264 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
589
265 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
587
266 485 590 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
590
267 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
590
268 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
590
269 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
587
270 486 591 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
591
271 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
591
272 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
591
273 -1
-1
<m_process_sensitive_sample_ordering_0;m_process_sensitive_sample_ordering_0_splitted_24[rov1,s6,cap2,bio_vault];_splitting_method_m_process_sensitive_sample_ordering_0_splitted_24;0;-1,-2,-3,1,2,3,4,5,6>
583
595 488 301 486 594 302 593 485 592 -1
6 7 4 5 0 8 0 6 0 4 0 5 0 7 0 3 0 2 0 1 5 6 7 8 3 4 2 8 2 6 2 4 2 5 2 7 2 3 1 8 1 6 1 4 1 5 1 7 1 3 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
592
276 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
592
277 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
592
278 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
593
279 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
593
280 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
593
281 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
594
282 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
594
283 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
594
284 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
595
285 483 596 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
596
286 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
596
287 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
596
288 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
595
289 484 597 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
597
290 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
597
291 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
597
292 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
595
293 485 598 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
598
294 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
598
295 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
598
296 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
595
297 486 599 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
599
298 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
599
299 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
599
300 -1
-1
<<m_process_sensitive_sample_handover_ordering_0;m_process_sensitive_sample_handover_ordering_0_splitted_25[s6,pressure_stabilizer,bio_vault];_splitting_method_m_process_sensitive_sample_handover_ordering_0_splitted_25;1;0,-1,-2>;m_process_sensitive_sample_handover_ordering_0_splitted_11[s6,transfer_zone];_splitting_method_m_process_sensitive_sample_handover_ordering_0_splitted_11;1;0,-1,2>
583
247 343 600 -1
0 2 0 1 1 2 -1
<<<_splitting_method__splitting_method_m_process_sensitive_sample_handover_ordering_0_splitted_25_splitted_32;continue-sensitive-from-handover[s6,cap2,transfer_zone,pressure_stabilizer,bio_vault];m_continue_sensitive_from_handover_ordering_0;1;0,-1,-2>;bring-sensitive-to-handover[s6,cap2,transfer_zone];m_bring_sensitive_to_handover_ordering_0;0;-1,-2,-3,1,2>;m_bring_sensitive_to_handover_ordering_0_splitted_15[rov1,s6,cap2,transfer_zone];_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_15;0;-1,-2,-3,1,2,3,4>
600
611 488 301 483 610 319 601 -1
4 6 4 5 5 6 0 6 0 4 0 5 0 3 0 2 0 1 3 6 3 4 3 5 2 6 2 4 2 5 2 3 1 6 1 4 1 5 1 3 1 2 -1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_35
601
483 605 486 604 302 603 485 602 -1
5 6 3 4 1 2 4 5 6 7 2 3 0 1 -1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
602
276 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
602
277 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
602
278 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
603
279 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
603
280 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
603
281 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
604
282 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
604
283 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
604
284 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
605
303 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
605
304 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
605
305 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_35
601
496 609 493 608 318 607 492 606 -1
5 6 3 4 1 2 4 5 6 7 2 3 0 1 -1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
606
306 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
606
307 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
606
308 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
607
309 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
607
310 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
607
311 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
608
312 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
608
313 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
608
314 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
609
315 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
609
316 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
609
317 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_26
610
320 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_26
610
321 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_26
610
322 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2
611
285 483 612 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
612
286 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
612
287 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
612
288 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2
611
289 484 613 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
613
290 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
613
291 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
613
292 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2
611
293 485 614 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
614
294 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
614
295 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
614
296 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2
611
297 486 615 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
615
298 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
615
299 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
615
300 -1
-1
<<<_splitting_method__splitting_method_m_process_sensitive_sample_handover_ordering_0_splitted_25_splitted_32;continue-sensitive-from-handover[s6,cap1,transfer_zone,pressure_stabilizer,bio_vault];m_continue_sensitive_from_handover_ordering_0;1;0,-1,-2>;bring-sensitive-to-handover[s6,cap1,transfer_zone];m_bring_sensitive_to_handover_ordering_0;0;-1,-2,-3,1,2>;m_bring_sensitive_to_handover_ordering_0_splitted_15[rov1,s6,cap1,transfer_zone];_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_15;0;-1,-2,-3,1,2,3,4>
600
626 488 274 483 625 339 616 -1
4 6 4 5 5 6 0 6 0 4 0 5 0 3 0 2 0 1 3 6 3 4 3 5 2 6 2 4 2 5 2 3 1 6 1 4 1 5 1 3 1 2 -1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_35
616
483 620 486 619 275 618 485 617 -1
5 6 3 4 1 2 4 5 6 7 2 3 0 1 -1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
617
249 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
617
250 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
617
251 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
618
252 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
618
253 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
618
254 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
619
255 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
619
256 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
619
257 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
620
323 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
620
324 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
620
325 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_35
616
496 624 493 623 338 622 492 621 -1
5 6 3 4 1 2 4 5 6 7 2 3 0 1 -1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
621
326 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
621
327 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_33
621
328 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
622
329 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
622
330 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_28
622
331 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
623
332 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
623
333 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_17
623
334 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
624
335 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
624
336 -1
-1
_splitting_method_m_continue_sensitive_from_handover_ordering_0_splitted_4
624
337 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_26
625
340 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_26
625
341 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_26
625
342 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2
626
258 483 627 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
627
259 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
627
260 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
627
261 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2
626
262 484 628 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
628
263 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
628
264 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
628
265 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2
626
266 485 629 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
629
267 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
629
268 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
629
269 -1
-1
_splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2
626
270 486 630 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
630
271 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
630
272 -1
-1
_splitting_method__splitting_method_m_bring_sensitive_to_handover_ordering_0_splitted_2_splitted_14
630
273 -1
-1
_splitting_method_m_process_all_sensitive_recursive_ordering_0_splitted_7
582
344 631 345 -1
0 2 0 1 1 2 -1
<m_process_sensitive_sample_ordering_0;m_process_sensitive_sample_ordering_0_splitted_24[rov1,s5,cap1,bio_vault];_splitting_method_m_process_sensitive_sample_ordering_0_splitted_24;0;-1,-2,-3,1,2,3,4,5,6>
631
635 489 359 486 634 360 633 485 632 -1
6 7 4 5 0 8 0 6 0 4 0 5 0 7 0 3 0 2 0 1 5 6 7 8 3 4 2 8 2 6 2 4 2 5 2 7 2 3 1 8 1 6 1 4 1 5 1 7 1 3 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
632
346 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
632
347 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
632
348 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
633
349 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
633
350 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
633
351 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
634
352 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
634
353 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
634
354 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
635
355 483 588 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
635
356 484 589 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
635
357 485 590 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
635
358 486 591 -1
0 2 0 1 1 2 -1
<m_process_sensitive_sample_ordering_0;m_process_sensitive_sample_ordering_0_splitted_24[rov1,s5,cap2,bio_vault];_splitting_method_m_process_sensitive_sample_ordering_0_splitted_24;0;-1,-2,-3,1,2,3,4,5,6>
631
639 489 374 486 638 375 637 485 636 -1
6 7 4 5 0 8 0 6 0 4 0 5 0 7 0 3 0 2 0 1 5 6 7 8 3 4 2 8 2 6 2 4 2 5 2 7 2 3 1 8 1 6 1 4 1 5 1 7 1 3 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
636
361 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
636
362 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
636
363 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
637
364 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
637
365 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
637
366 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
638
367 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
638
368 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
638
369 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
639
370 483 596 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
639
371 484 597 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
639
372 485 598 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
639
373 486 599 -1
0 2 0 1 1 2 -1
<m_process_sensitive_sample_ordering_0;m_process_sensitive_sample_ordering_0_splitted_24[rov2,s5,cap2,bio_vault];_splitting_method_m_process_sensitive_sample_ordering_0_splitted_24;0;-1,-2,-3,1,2,3,4,5,6>
631
643 494 397 493 642 398 641 492 640 -1
6 7 4 5 0 8 0 6 0 4 0 5 0 7 0 3 0 2 0 1 5 6 7 8 3 4 2 8 2 6 2 4 2 5 2 7 2 3 1 8 1 6 1 4 1 5 1 7 1 3 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
640
376 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
640
377 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
640
378 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
641
379 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
641
380 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
641
381 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
642
382 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
642
383 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
642
384 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
643
371 491 644 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
644
385 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
644
386 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
644
387 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
643
372 492 645 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
645
388 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
645
389 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
645
390 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
643
373 493 646 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
646
391 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
646
392 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
646
393 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
643
370 496 647 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
647
394 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
647
395 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
647
396 -1
-1
<m_process_sensitive_sample_ordering_0;m_process_sensitive_sample_ordering_0_splitted_24[rov2,s5,cap1,bio_vault];_splitting_method_m_process_sensitive_sample_ordering_0_splitted_24;0;-1,-2,-3,1,2,3,4,5,6>
631
651 494 420 493 650 421 649 492 648 -1
6 7 4 5 0 8 0 6 0 4 0 5 0 7 0 3 0 2 0 1 5 6 7 8 3 4 2 8 2 6 2 4 2 5 2 7 2 3 1 8 1 6 1 4 1 5 1 7 1 3 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
648
399 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
648
400 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
648
401 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
649
402 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
649
403 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
649
404 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
650
405 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
650
406 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
650
407 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
651
356 491 652 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
652
408 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
652
409 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
652
410 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
651
357 492 653 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
653
411 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
653
412 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
653
413 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
651
358 493 654 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
654
414 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
654
415 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
654
416 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
651
355 496 655 -1
0 2 0 1 1 2 -1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
655
417 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
655
418 -1
-1
_splitting_method__splitting_method_m_process_sensitive_sample_ordering_0_splitted_10_splitted_23
655
419 -1
-1
_splitting_method_m_process_all_sensitive_recursive_ordering_0_splitted_7
582
422 656 423 -1
0 2 0 1 1 2 -1
<m_process_sensitive_sample_ordering_0;m_process_sensitive_sample_ordering_0_splitted_24[rov1,s4,cap1,bio_vault];_splitting_method_m_process_sensitive_sample_ordering_0_splitted_24;0;-1,-2,-3,1,2,3,4,5,6>
656
660 489 437 486 659 438 658 485 657 -1
6 7 4 5 0 8 0 6 0 4 0 5 0 7 0 3 0 2 0 1 5 6 7 8 3 4 2 8 2 6 2 4 2 5 2 7 2 3 1 8 1 6 1 4 1 5 1 7 1 3 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
657
424 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
657
425 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
657
426 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
658
427 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
658
428 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
658
429 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
659
430 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
659
431 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
659
432 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
660
433 483 588 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
660
434 484 589 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
660
435 485 590 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
660
436 486 591 -1
0 2 0 1 1 2 -1
<m_process_sensitive_sample_ordering_0;m_process_sensitive_sample_ordering_0_splitted_24[rov1,s4,cap2,bio_vault];_splitting_method_m_process_sensitive_sample_ordering_0_splitted_24;0;-1,-2,-3,1,2,3,4,5,6>
656
664 489 452 486 663 453 662 485 661 -1
6 7 4 5 0 8 0 6 0 4 0 5 0 7 0 3 0 2 0 1 5 6 7 8 3 4 2 8 2 6 2 4 2 5 2 7 2 3 1 8 1 6 1 4 1 5 1 7 1 3 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
661
439 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
661
440 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
661
441 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
662
442 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
662
443 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
662
444 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
663
445 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
663
446 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
663
447 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
664
448 483 596 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
664
449 484 597 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
664
450 485 598 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
664
451 486 599 -1
0 2 0 1 1 2 -1
<m_process_sensitive_sample_ordering_0;m_process_sensitive_sample_ordering_0_splitted_24[rov2,s4,cap1,bio_vault];_splitting_method_m_process_sensitive_sample_ordering_0_splitted_24;0;-1,-2,-3,1,2,3,4,5,6>
656
668 494 463 493 667 464 666 492 665 -1
6 7 4 5 0 8 0 6 0 4 0 5 0 7 0 3 0 2 0 1 5 6 7 8 3 4 2 8 2 6 2 4 2 5 2 7 2 3 1 8 1 6 1 4 1 5 1 7 1 3 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
665
454 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
665
455 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
665
456 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
666
457 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
666
458 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
666
459 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
667
460 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
667
461 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
667
462 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
668
434 491 652 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
668
435 492 653 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
668
436 493 654 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
668
433 496 655 -1
0 2 0 1 1 2 -1
<m_process_sensitive_sample_ordering_0;m_process_sensitive_sample_ordering_0_splitted_24[rov2,s4,cap2,bio_vault];_splitting_method_m_process_sensitive_sample_ordering_0_splitted_24;0;-1,-2,-3,1,2,3,4,5,6>
656
672 494 474 493 671 475 670 492 669 -1
6 7 4 5 0 8 0 6 0 4 0 5 0 7 0 3 0 2 0 1 5 6 7 8 3 4 2 8 2 6 2 4 2 5 2 7 2 3 1 8 1 6 1 4 1 5 1 7 1 3 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
669
465 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
669
466 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_36
669
467 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
670
468 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
670
469 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_34
670
470 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
671
471 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
671
472 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_31
671
473 -1
-1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
672
449 491 644 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
672
450 492 645 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
672
451 493 646 -1
0 2 0 1 1 2 -1
_splitting_method_m_process_sensitive_sample_ordering_0_splitted_10
672
448 496 647 -1
0 2 0 1 1 2 -1
