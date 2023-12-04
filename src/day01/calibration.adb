--with Ada.Strings; use Ada.Strings;
with Ada.Text_IO;      use Ada.Text_IO;

package body Calibration is

    function Calibrate (input: Calibration_Vectors.Vector) return Integer is

        sum   : Integer := 0;

    begin

        for element of input loop
            -- TODO parse
            Put_Line (element);
        end loop;

        return sum;
    end Calibrate;

end Calibration;
