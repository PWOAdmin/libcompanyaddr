with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;

with Work.Punks.Authority;
with Work.Punks.Address;

use Work.Punks;

package work.punks.Company is

   type Company_Type is tagged private;
   type Company_Access is access all Company_Type'Class;
   
   procedure Set_Edited_By (Company: in out Company_Access; Value: in Work.Punks.Authority.User_Access);
   function Get_Edited_By (Company: Company_Access) return Work.Punks.Authority.User_Access;
   
private
   
   type Company_Type is tagged record
   
      Edited_By: Work.Punks.Authority.User_Access;
      Company_Address: Address.Address_Type;
      
   end record;
   

end work.punks.Company;
