pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Yield_Demo;
procedure Tests is
begin
   Assert (Yield_Demo.Both_Ran);
   Put_Line ("PASS Ada.Dispatching.Yield with two tasks");
   Put_Line ("All Dispatching.Yield topic tests passed.");
end Tests;
