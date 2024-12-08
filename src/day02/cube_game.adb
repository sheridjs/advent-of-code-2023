with Ada.Strings;       use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Strings.Maps;  use Ada.Strings.Maps;
with Ada.Text_IO;             use Ada.Text_IO;

package body Cube_Game is

    type Cube is (Red, Green, Blue);

    type Cube_Count is array (Cube) of Natural;

    Cube_Max: constant Cube_Count := (12, 13, 14);

    function Get_Possible_Game_Total (input : Game_Record_Vectors.Vector) return Integer is

        sum : Integer := 0;

    begin
        for input_line of input loop
            sum := sum + Parse (input_line);
        end loop;

        return sum;
    end Get_Possible_Game_Total;

    function Parse (str : String) return Integer is


        F   : Positive;
        L   : Natural;
        I   : Natural := 1;

        Whitespace : constant Character_Set :=
            To_Set (':');
    begin
        Put_Line ("String: " & str);
        Put_Line ("String length: " & Integer'Image (str'Length));

        while I in str'Range loop
            Find_Token
                (Source  => str,
                Set     => Whitespace,
                From    => I,
                Test    => Outside,
                First   => F,
                Last    => L);


            exit when L = 0;

            Put_Line ("Found word instance at position "
                        & Natural'Image (F)
                        & ": '" & str (F .. L) & "'");
            --   & "-" & F'Img & "-" & L'Img

            I := L + 1;
        end loop;



        return 0;
    end Parse;

end Cube_Game;
