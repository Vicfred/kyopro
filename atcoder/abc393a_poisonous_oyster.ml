(*(* vicfred *)
(* https://atcoder.jp/contests/abc393/tasks/abc393_a *)
(* implementation *)

let () =
  (* Read a single line with two words *)
  let input = read_line () in
  
  (* Split input into two words *)
  let words = String.split_on_char ' ' input in
  match words with
  | [s1; s2] ->
      (* Check conditions and print corresponding values *)
      print_int (
        if s1 = "fine" && s2 = "fine" then 4
        else if s1 = "fine" && s2 = "sick" then 3
        else if s1 = "sick" && s2 = "fine" then 2
        else if s1 = "sick" && s2 = "sick" then 1
        else 0 (* Default case, shouldn't happen *)
      );
      print_newline ()
  | _ -> print_endline "Invalid input"
