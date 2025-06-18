with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;

with Work.Punks.Authority;

package Body work.punks.Company is


   
   procedure Set_Edited_By (Company: in out Company_Access; Value: in Work.Punks.Authority.User_Access)
   is
   begin
      Company.Edited_By:=Value;
   end Set_Edited_By;
   
   function Get_Edited_By (Company: Company_Access) return Work.Punks.Authority.User_Access
   is
   begin
      
      return Company.Edited_By;
   end Get_Edited_By;
   
   

   

end work.punks.Company;
