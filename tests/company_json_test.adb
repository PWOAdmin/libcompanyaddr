with AUnit.Assertions; use AUnit.Assertions;

with Work.Punks.Company_Types;
with Work.Punks.Company;

use Work.Punks;
with Ada.Text_IO;
use Ada.Text_IO;
package body Company_JSON_Test is

   function Name (T : Test) return AUnit.Message_String is
      pragma Unreferenced (T);
   begin
      return AUnit.Format ("Test Math package");
   end Name;

   procedure Run_Test (T : in out Test) is
      pragma Unreferenced (T);
  
  Company_T: Company_Types.Company_Access;
JSON_String:constant String:="{""Company_Name"":""testName""}";
   begin

Company_T:=Company.From_JSON (JSON_String);
Put_Line ("JSON string: "&JSON_String);
Put_Line ("Company_T::Company_Name: "&Company.Get_Company_Name(Company_T));
Assert (Company.Get_Company_Name (Company_T) = "testName", "Incorrect company name");

   end Run_Test;
end Company_JSON_Test;