with Work.Punks.Company_Types;
use Work.Punks.Company_Types;
with work.punks.Authority;
with Ada.Calendar;
package work.punks.Company is

   -- Setters
   procedure Set_Company_Name
     (Company_Ptr : in out Company_Access; Name : in String);

   procedure Set_Legal_Entity_Type
     (Company_Ptr : in out Company_Access; Kind : in String);

   procedure Set_Description
     (Company_Ptr : in out Company_Access; Desc : in String);

   procedure Set_Registration_Number
     (Company_Ptr : in out Company_Access; Reg : in String);

   procedure Set_Tax_ID
     (Company_Ptr : in out Company_Access; Tax : in String);

   procedure Set_Website_URL
     (Company_Ptr : in out Company_Access; URL : in String);

   procedure Set_Email_Address
     (Company_Ptr : in out Company_Access; Email : in String);

   procedure Set_Phone_Number
     (Company_Ptr : in out Company_Access; Phone : in String);

   procedure Set_Company_Address
     (Company_Ptr : in out Company_Access; Address_Ptr : in Address_Access);

   procedure Set_Contacts
     (Company_Ptr : in out Company_Access; Contacts : in Contact_List);

   procedure Set_Edited_By
     (Company_Ptr : in out Company_Access; User : Work.Punks.Authority.User_Access);

   procedure Set_Timestamps
     (Company_Ptr : in out Company_Access; Created, Updated : in Ada.Calendar.Time);

   -- Getters
   function Get_Company_Name (Company_Ptr : Company_Access) return String;
   function Get_Description (Company_Ptr : Company_Access) return String;
   function Get_Legal_Entity_Type (Company_Ptr : Company_Access) return String;
   function Get_Registration_Number (Company_Ptr : Company_Access) return String;
   function Get_Tax_ID (Company_Ptr : Company_Access) return String;
   function Get_Website_URL (Company_Ptr : Company_Access) return String;
   function Get_Email_Address (Company_Ptr : Company_Access) return String;
   function Get_Phone_Number (Company_Ptr : Company_Access) return String;
   function Get_Company_Address (Company_Ptr : Company_Access) return Address_Access;
   function Get_Contacts (Company_Ptr : Company_Access) return Contact_List;
   function Get_Edited_By (Company_Ptr : Company_Access) return Work.Punks.Authority.User_Access;
   function Get_Created_At (Company_Ptr : Company_Access) return Ada.Calendar.Time;
   function Get_Updated_At (Company_Ptr : Company_Access) return Ada.Calendar.Time;

   -- Memory management
   procedure Free_Company (Company_Ptr : in out Company_Access);

   -- JSON Management

   function From_JSON (Payload: String) return Company_Access;
   function To_JSON (Company_T: Company_Access) return String;


end work.punks.Company;
