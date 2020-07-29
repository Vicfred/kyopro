open Printf
open Scanf;;

printf "%d\n" @@
scanf "%d %d\n" @@ fun n m ->
  let a = Array.init m @@ fun _ -> ref 0 in
  let b = Array.init m @@ fun _ -> ref 0 in

  for i = 0 to m - 1 do
    scanf "%d %d\n" @@ fun x y ->
      a.(i) := x;
      b.(i) := y;
  done;

  let ans = ref 0 in
  for mask = 0 to (1 lsl n) - 1 do
    try
      for i = 0 to m - 1 do
        if mask land (1 lsl (!(a.(i)) - 1)) > 0 &&
          mask land (1 lsl (!(b.(i)) - 1)) > 0 then
          raise Not_found;
      done;
      ans := !ans + 1;
    with
    | Not_found -> ();
  done;

  !ans
