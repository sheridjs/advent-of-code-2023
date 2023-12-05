with Ada.Containers.Indefinite_Vectors;

package Calibration is

   package Calibration_Vectors is new
     Ada.Containers.Indefinite_Vectors
       (Index_Type   => Natural,
        Element_Type => String);

   function Calibrate (input : Calibration_Vectors.Vector) return Integer;

   function Parse (str : String) return Integer;

end Calibration;
