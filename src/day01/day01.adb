with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Calibration; use Calibration;

-- Day 1 application main. Recieves input argument, calls algorithm, and prints output.
procedure Day01 is
    sum   : Integer := 0;
    input : File_Type;
    file_name : Unbounded_String;
    calibration_vector : Calibration_Vectors.Vector;
begin
    if Argument_Count = 1 then
        file_name := To_Unbounded_String (Argument (1));

        Open (input, In_File, To_String(file_name));
        while not End_Of_File (input) loop
            calibration_vector.Append (Get_Line (input));
        end loop;
        Close (input);

        sum := Calibrate(calibration_vector);

        Put_Line (Integer'Image (sum));
    else
        Put_Line ("Expected single input file name argument.");
    end if;
end Day01;
