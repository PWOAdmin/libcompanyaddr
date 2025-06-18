
with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;

package work.punks.Address is

   type Address_Type is tagged private;
   type Address_Access is access all Address_Type'Class;
   
private
   type Address_Type is tagged record
      
      Country_Name: Unbounded_String;
      City_Name: Unbounded_String;
      
   end record;
   

end work.punks.Address;
