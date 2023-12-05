with Ada.Text_IO;             use Ada.Text_IO;
with Ada.Characters.Handling; use Ada.Characters.Handling;

package body Calibration is

    package Digit_Vectors is new Ada.Containers.Indefinite_Vectors
       (Index_Type => Natural, Element_Type => Character);

    function Calibrate (input : Calibration_Vectors.Vector) return Integer is

        sum : Integer := 0;

    begin
        for input_line of input loop
            sum := sum + Parse (input_line);
        end loop;

        return sum;
    end Calibrate;

    function Parse (str : String) return Integer is

        found_digits : Digit_Vectors.Vector;
        digit_str    : String(1..2);

    begin
        for i in str'Range loop
            if Is_Digit (str (i)) then
                found_digits.Append (str (i));
            end if;
        end loop;

        digit_str := (found_digits.First_Element, found_digits.Last_Element);

        return Integer'Value (digit_str);
    end Parse;

end Calibration;
