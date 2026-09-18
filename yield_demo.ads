--  Ada 2022 topic: Ada.Dispatching.Yield.
pragma Ada_2022;
package Yield_Demo is
   --  Two tasks cooperate via Yield; returns True if both ran.
   function Both_Ran return Boolean;
end Yield_Demo;
