exception Fail

let neighbours ((x, y) : int * int) (n : int) : (int * int) list =
  let neighbour = [
    (x+1, y+2); (x+1, y-2);
    (x-1, y+2); (x-1, y-2);
    (x+2, y-1); (x+2, y-2);
    (x-2, y-1); (x-2, y-2);
  ]
in
let rec valid_moves moves acc = 
  match moves with
    | [] -> acc 
    | (a, b) :: rest ->
        if a >= 0 && a < n && b >= 0 && b < n then
          valid_moves rest ((a, b) :: acc) 
        else
          valid_moves rest acc 
  in
  valid_moves neighbour [] ;;

let traverse (x,y) n =  
let rec aux_node (x,y) visited l counter fc sc =  
  if counter = n * n then sc [] else 
  (match l with 
   | [] -> fc () 
   | (x1,y1) :: t ->  
      if List.exists (fun (e1,e2) -> (x1,y1) = (e1,e2)) visited 
       then aux_node (x,y) visited t counter fc sc 
      else aux_node (x1,y1) (visited @ [(x,y)]) (neighbours (x1,y1) n) (counter+1)  
           (fun () -> aux_node (x,y) visited t counter fc sc) (fun nodeList -> sc [(x1,y1)] @ nodeList)) in 
      aux_node (x,y) [(x,y)] (neighbours (x,y) n) 1 (fun() -> raise Fail)  
      (fun (nodeList) -> [(x,y)] @ nodeList);;  