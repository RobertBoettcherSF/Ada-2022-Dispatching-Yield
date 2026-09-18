pragma Ada_2022;
with Ada.Dispatching;
package body Yield_Demo is
   function Both_Ran return Boolean is
      A_Done, B_Done : Boolean := False;

      task A;
      task body A is
      begin
         for I in 1 .. 5 loop
            Ada.Dispatching.Yield;
         end loop;
         A_Done := True;
      end A;

      task B;
      task body B is
      begin
         for I in 1 .. 5 loop
            Ada.Dispatching.Yield;
         end loop;
         B_Done := True;
      end B;
   begin
      null;  -- wait for tasks to complete at end of scope
      return A_Done and then B_Done;
   end Both_Ran;
end Yield_Demo;
