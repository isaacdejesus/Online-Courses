(*this is a comment.*)
val x = 34; 
(*static environment: x : int *)
(*dinamic environment: x ->>34*)
val y = 17;
(* static environment: x : int, y : int *)
(* dynamic environment: x --> 34, y -->17 *)

val z = (x + y) + (y +2);
(* static environment : x int, y : int, z : int *)
(* dynamic environment: x -->34, y -->17, z -->70 *)

val q = z+1;

(* static environment: z int, y : int, z : int, q :int *)
(* dynamic environment: x --34, y -->17, z -->70, w ->71 *)

val abs_of_z = if z <0 then 0- z else z; (*bool *) (* int *)
(* abs_of_z : int *)
(*dynamic environment : ...., abs_of_z -->70 *)

val abs_of_z_simpler = abs z;
(* abs is a function, abs z is a function call*)

(* the dynamic environment keeps track of the values stored within variables at
* different stages of the program. Top-> bottom. However, the first thing to
* happen upon execution is the static enviromental check. It runs a check to
* make sure all variables and values being used match. If there are no
* mismatches, then the program will run.

