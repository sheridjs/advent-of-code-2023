-- https://docs.adacore.com/gnat_ugn-docs/html/gnat_ugn/gnat_ugn/getting_started_with_gnat.html

with Ada.Text_IO; use Ada.Text_IO;
package body Greetings is
   procedure Hello is
   begin
      Put_Line ("Hello WORLD!");
   end Hello;

   procedure Goodbye is
   begin
      Put_Line ("Goodbye WORLD!");
   end Goodbye;
end Greetings;