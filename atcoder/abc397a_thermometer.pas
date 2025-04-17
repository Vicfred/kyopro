(* vicfred
   https://atcoder.jp/contests/abc397/tasks/abc397_a
   implementation *)
program TemperatureCategory;

var
  X: Real;
  
begin
  (* Read input *)
  Readln(X);
  
  (* Apply condition logic *)
  if X >= 38.0 then
    Writeln(1)
  else if X >= 37.5 then
    Writeln(2)
  else
    Writeln(3);
end.
