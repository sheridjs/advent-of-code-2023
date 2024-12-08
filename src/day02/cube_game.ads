with Ada.Containers.Indefinite_Vectors;

package Cube_Game is

   package Game_Record_Vectors is new
     Ada.Containers.Indefinite_Vectors
       (Index_Type   => Natural,
        Element_Type => String);

   function Get_Possible_Game_Total (input : Game_Record_Vectors.Vector) return Integer;

   function Parse (str : String) return Integer;

end Cube_Game;
