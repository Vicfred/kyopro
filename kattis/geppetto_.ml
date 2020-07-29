open Printf
open Scanf;;

let rec repeat i n f =
  if i < n then (
    f(i);
    repeat (i + 1) n f;
  );;

printf "%d\n" @@
scanf "%d %d\n" ( fun n m ->
  let a = Array.init m @@ fun _ -> ref 0 in
  let b = Array.init m @@ fun _ -> ref 0 in

  repeat 0 m ( fun i ->
    scanf "%d %d\n" @@ fun x y ->
      a.(i) := x;
      b.(i) := y;
  );

  let ans = ref 0 in
  repeat 0 (1 lsl n) ( fun mask ->
    try (
      repeat 0 m ( fun i ->
        if mask land (1 lsl (!(a.(i)) - 1)) > 0 &&
          mask land (1 lsl (!(b.(i)) - 1)) > 0 then
          raise Not_found;
      );
      ans := !ans + 1;
    ) with
    | Not_found -> ();
  );

  !ans
);;
