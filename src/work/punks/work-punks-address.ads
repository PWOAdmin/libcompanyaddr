
with Work.Punks.Company_Types;
use Work.Punks.Company_Types;

package work.punks.Address is
   
 -- Setters
   procedure Set_Country_Name
     (Addr : in out Address_Access; Name : in String);

   procedure Set_State_Province
     (Addr : in out Address_Access; State : in String);

   procedure Set_City_Name
     (Addr : in out Address_Access; City : in String);

   procedure Set_Postal_Code
     (Addr : in out Address_Access; Code : in String);

   procedure Set_Street_Name
     (Addr : in out Address_Access; Street : in String);

   procedure Set_Building_Number
     (Addr : in out Address_Access; Number : in String);

   procedure Set_Apartment_Number
     (Addr : in out Address_Access; Apt : in String);

   procedure Set_PO_Box
     (Addr : in out Address_Access; Box : in String);

   procedure Set_Address_Notes
     (Addr : in out Address_Access; Notes : in String);

   -- Getters
   function Get_Country_Name
     (Addr : Address_Type) return String;

   function Get_State_Province
     (Addr : Address_Type) return String;

   function Get_City_Name
     (Addr : Address_Type) return String;

   function Get_Postal_Code
     (Addr : Address_Type) return String;

   function Get_Street_Name
     (Addr : Address_Type) return String;

   function Get_Building_Number
     (Addr : Address_Type) return String;

   function Get_Apartment_Number
     (Addr : Address_Type) return String;

   function Get_PO_Box
     (Addr : Address_Type) return String;

   function Get_Address_Notes
     (Addr : Address_Type) return String;

end work.punks.Address;
