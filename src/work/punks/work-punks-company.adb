with Ada.Strings.Unbounded;
with Ada.Unchecked_Deallocation;

with GNATCOLL.JSON;
use GNATCOLL;

package Body work.punks.Company is


   use Ada.Strings.Unbounded;

   type Company_Ptr_T is access all Company_Type;

   procedure Free_Internal is
     new Ada.Unchecked_Deallocation (Company_Type, Company_Ptr_T);

   ------------------
   -- Setters --
   ------------------

   procedure Set_Company_Name (Company_Ptr : in out Company_Access; Name : in String) is
   begin
      Company_Ptr.Company_Name := To_Unbounded_String(Name);
   end Set_Company_Name;

   procedure Set_Legal_Entity_Type (Company_Ptr : in out Company_Access; Kind : in String) is
   begin
      Company_Ptr.Legal_Entity_Type := To_Unbounded_String(Kind);
   end Set_Legal_Entity_Type;

   procedure Set_Description (Company_Ptr : in out Company_Access; Desc : in String) is
   begin
      Company_Ptr.Description := To_Unbounded_String(Desc);
   end Set_Description;

   procedure Set_Registration_Number (Company_Ptr : in out Company_Access; Reg : in String) is
   begin
      Company_Ptr.Registration_Number := To_Unbounded_String(Reg);
   end Set_Registration_Number;

   procedure Set_Tax_ID (Company_Ptr : in out Company_Access; Tax : in String) is
   begin
      Company_Ptr.Tax_ID := To_Unbounded_String(Tax);
   end Set_Tax_ID;

   procedure Set_Website_URL (Company_Ptr : in out Company_Access; URL : in String) is
   begin
      Company_Ptr.Website_URL := To_Unbounded_String(URL);
   end Set_Website_URL;

   procedure Set_Email_Address (Company_Ptr : in out Company_Access; Email : in String) is
   begin
      Company_Ptr.Email_Address := To_Unbounded_String(Email);
   end Set_Email_Address;

   procedure Set_Phone_Number (Company_Ptr : in out Company_Access; Phone : in String) is
   begin
      Company_Ptr.Phone_Number := To_Unbounded_String(Phone);
   end Set_Phone_Number;

   procedure Set_Company_Address (Company_Ptr : in out Company_Access; Address_Ptr : in Address_Access) is
   begin
      Company_Ptr.Company_Address := Address_Ptr;
   end Set_Company_Address;

   procedure Set_Contacts (Company_Ptr : in out Company_Access; Contacts : in Contact_List) is
   begin
      Company_Ptr.Contacts := Contacts;
   end Set_Contacts;

   procedure Set_Edited_By (Company_Ptr : in out Company_Access; User : Work.Punks.Authority.User_Access) is
   begin
      Company_Ptr.Edited_By := User;
   end Set_Edited_By;

   procedure Set_Timestamps
     (Company_Ptr : in out Company_Access; Created, Updated : in Ada.Calendar.Time) is
   begin
      Company_Ptr.Created_At := Created;
      Company_Ptr.Updated_At := Updated;
   end Set_Timestamps;

   ------------------
   -- Getters --
   ------------------

   function Get_Company_Name (Company_Ptr : Company_Access) return String is
   begin
      return To_String(Company_Ptr.Company_Name);
   end Get_Company_Name;

   function Get_Description (Company_Ptr : Company_Access) return String is
   begin
      return To_String(Company_Ptr.Description);
   end Get_Description;

   function Get_Legal_Entity_Type (Company_Ptr : Company_Access) return String is
   begin
      return To_String(Company_Ptr.Legal_Entity_Type);
   end Get_Legal_Entity_Type;

   function Get_Registration_Number (Company_Ptr : Company_Access) return String is
   begin
      return To_String(Company_Ptr.Registration_Number);
   end Get_Registration_Number;

   function Get_Tax_ID (Company_Ptr : Company_Access) return String is
   begin
      return To_String(Company_Ptr.Tax_ID);
   end Get_Tax_ID;

   function Get_Website_URL (Company_Ptr : Company_Access) return String is
   begin
      return To_String(Company_Ptr.Website_URL);
   end Get_Website_URL;

   function Get_Email_Address (Company_Ptr : Company_Access) return String is
   begin
      return To_String(Company_Ptr.Email_Address);
   end Get_Email_Address;

   function Get_Phone_Number (Company_Ptr : Company_Access) return String is
   begin
      return To_String(Company_Ptr.Phone_Number);
   end Get_Phone_Number;

   function Get_Company_Address (Company_Ptr : Company_Access) return Address_Access is
   begin
      return Company_Ptr.Company_Address;
   end Get_Company_Address;

   function Get_Contacts (Company_Ptr : Company_Access) return Contact_List is
   begin
      return Company_Ptr.Contacts;
   end Get_Contacts;

   function Get_Edited_By (Company_Ptr : Company_Access) return Work.Punks.Authority.User_Access is
   begin
      return Company_Ptr.Edited_By;
   end Get_Edited_By;

   function Get_Created_At (Company_Ptr : Company_Access) return Ada.Calendar.Time is
   begin
      return Company_Ptr.Created_At;
   end Get_Created_At;

   function Get_Updated_At (Company_Ptr : Company_Access) return Ada.Calendar.Time is
   begin
      return Company_Ptr.Updated_At;
   end Get_Updated_At;



   function From_JSON (Payload: String) return Company_Types.Company_Access
   is
   Company_T: Company_Types.Company_Access:=new Company_Types.Company_Type;
   Result: JSON.JSON_Value:=JSON.Read (Payload);
   begin

       Set_Company_Name (Company_T, Result.Get("Company_Name"));
   return Company_T;
   end From_JSON;

   function To_JSON (Company_T: Company_Types.Company_Access) return String
   is
   begin
return "";
   end To_JSON;

   ------------------
   -- Free_Company --
   ------------------

   procedure Free_Company (Company_Ptr : in out Company_Access) is
      Temp : Company_Ptr_T;
   begin
      if Company_Ptr /= null then
         Temp := Company_Ptr_T(Company_Ptr);
         Free_Internal(Temp);
         Company_Ptr := null;
      end if;
   end Free_Company;
end work.punks.Company;
