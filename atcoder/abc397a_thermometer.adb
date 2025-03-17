-- Vicfred
-- https://atcoder.jp/contests/abc397/tasks/abc397_a
-- implementation
with Ada.Text_IO;
with Ada.Float_Text_IO;

procedure Main is
   X : Float;
begin
   -- Read input
   Ada.Float_Text_IO.Get(X);
   
   -- Determine and output result
   if X >= 38.0 then
      Ada.Text_IO.Put_Line("1");
   elsif X >= 37.5 then
      Ada.Text_IO.Put_Line("2");
   else
      Ada.Text_IO.Put_Line("3");
   end if;
end Main;
