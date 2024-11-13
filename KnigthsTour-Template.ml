exception NotImplemented
exception Fail 

(* Write a function neighbours: int * int -> int -> (int * int) list, which takes as input a
coordinate on a chess board as an int * int tuple, and the size of the n x n chessboard,
and returns a list of all moves reachable by knight, written in coordinate form. 

Note: The knight moves in an L shape, going vertically two spaces and horizontally one space,
or vice versa. 

Example output: 
neighbours (1,1) 8;;
- : (int * int) list = [(3, 0); (3, 2); (0, 3); (2, 3)]

neighbours (0,0) 1;;
- : (int * int) list = []

neighbours (2,3) 6;;
- : (int * int) list =
[(0, 2); (0, 4); (4, 2); (4, 4); (1, 1); (1, 5); (3, 1); (3, 5)]
*)
let neighbours ((x, y) : int * int) (n : int) : (int * int) list =
    let rec valid_moves moves acc = 
        raise NotImplemented 
    in 
    raise NotImplemented
;;

(* Write a function: traverse int * int -> int -> (int * int) list, which takes as inputs the starting
coordinates (x,y), the size of the board n, and returns a list of all the moves in the order of the 
Knight's Traversal. No move should be repeated. 

Use a helper function moves which takes in a list of visited tiles, a list of neighbours, and a counter
which will be used to verify that n*n moves have been made, indicating a full tour. Use continuations to
backtrack, if no valid tour is found, raise the exception Fail. 

traverse (0,0) 7;;
- : (int * int) list = 
[(0, 0); (1, 2); (2, 4); (3, 6); (4, 4); (5, 6); (6, 4); (5, 2); (6, 0); (4, 1); (5, 3); 
 (6, 5); (4, 6); (5, 4); (6, 6); (4, 5); (3, 3); (2, 5); (1, 3); (0, 5); (2, 6); (3, 4); (4, 2);
 (6, 1); (4, 0); (2, 1); (0, 2); (1, 0); (3, 1); (5, 0); (6, 2); (4, 3); (5, 5); (6, 3); (5, 1); 
 (3, 2); (2, 0); (0, 1); (2, 2); (3, 0); (1, 1); (0, 3); (1, 5); (2, 3); (0, 4); (1, 6); (3, 5); 
 (1, 4); (0, 6)] 

traverse (2,4) 5;;
- : (int * int) list = 
[(2, 4); (4, 3); (3, 1); (1, 0); (2, 2); (0, 3); (1, 1); (3, 0); (4, 2); (3, 4); (1, 3); (0, 1); (2, 0); 
(4, 1); (3, 3); (1, 4); (0, 2); (2, 1); (4, 0); (3, 2); (4, 4); (2, 3); (0, 4); (1, 2); (0, 0)] 

traverse (3,2) 4;;
exception Fail

traverse (0,2) 5;;
- : (int * int) list =
[(0, 2); (1, 4); (2, 2); (1, 0); (3, 1); (4, 3); (2, 4); (0, 3); (1, 1); (3, 0); (4, 2); (3, 4); (1, 3); 
(0, 1); (2, 0); (4, 1); (3, 3); (2, 1); (4, 0); (3, 2); (4, 4); (2, 3); (0, 4); (1, 2); (0, 0)] 

*)
let traverse ((x,y) : int * int) (n : int) : (int * int) list = 
    let rec moves (visited : int list) (neighbours : int list) (counter : int) fc sc =
        raise NotImplemented
    in
    raise NotImplemented
;;