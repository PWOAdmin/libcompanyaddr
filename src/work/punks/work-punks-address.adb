
with Ada.Strings.Unbounded;
with Ada.Unchecked_Deallocation;

package body work.punks.Address is
   use Ada.Strings.Unbounded;
   -- Deallocation for class-wide Address_Access
   procedure Free is
     new Ada.Unchecked_Deallocation (Object => Address_Type'Class,
                                     Name   => Address_Access);

   ------------------
   -- Setter Procs --
   ------------------

   procedure Set_Country_Name (Addr : in out Address_Access; Name : in String) is
   begin
      Addr.Country_Name := To_Unbounded_String(Name);
   end Set_Country_Name;

   procedure Set_State_Province (Addr : in out Address_Access; State : in String) is
   begin
      Addr.State_Province := To_Unbounded_String(State);
   end Set_State_Province;

   procedure Set_City_Name (Addr : in out Address_Access; City : in String) is
   begin
      Addr.City_Name := To_Unbounded_String(City);
   end Set_City_Name;

   procedure Set_Postal_Code (Addr : in out Address_Access; Code : in String) is
   begin
      Addr.Postal_Code := To_Unbounded_String(Code);
   end Set_Postal_Code;

   procedure Set_Street_Name (Addr : in out Address_Access; Street : in String) is
   begin
      Addr.Street_Name := To_Unbounded_String(Street);
   end Set_Street_Name;

   procedure Set_Building_Number (Addr : in out Address_Access; Number : in String) is
   begin
      Addr.Building_Number := To_Unbounded_String(Number);
   end Set_Building_Number;

   procedure Set_Apartment_Number (Addr : in out Address_Access; Apt : in String) is
   begin
      Addr.Apartment_Number := To_Unbounded_String(Apt);
   end Set_Apartment_Number;

   procedure Set_PO_Box (Addr : in out Address_Access; Box : in String) is
   begin
      Addr.PO_Box := To_Unbounded_String(Box);
   end Set_PO_Box;

   procedure Set_Address_Notes (Addr : in out Address_Access; Notes : in String) is
   begin
      Addr.Address_Notes := To_Unbounded_String(Notes);
   end Set_Address_Notes;

   ------------------
   -- Getter Funcs --
   ------------------

   function Get_Country_Name (Addr : Address_Type) return String is
   begin
      return To_String(Addr.Country_Name);
   end Get_Country_Name;

   function Get_State_Province (Addr : Address_Type) return String is
   begin
      return To_String(Addr.State_Province);
   end Get_State_Province;

   function Get_City_Name (Addr : Address_Type) return String is
   begin
      return To_String(Addr.City_Name);
   end Get_City_Name;

   function Get_Postal_Code (Addr : Address_Type) return String is
   begin
      return To_String(Addr.Postal_Code);
   end Get_Postal_Code;

   function Get_Street_Name (Addr : Address_Type) return String is
   begin
      return To_String(Addr.Street_Name);
   end Get_Street_Name;

   function Get_Building_Number (Addr : Address_Type) return String is
   begin
      return To_String(Addr.Building_Number);
   end Get_Building_Number;

   function Get_Apartment_Number (Addr : Address_Type) return String is
   begin
      return To_String(Addr.Apartment_Number);
   end Get_Apartment_Number;

   function Get_PO_Box (Addr : Address_Type) return String is
   begin
      return To_String(Addr.PO_Box);
   end Get_PO_Box;

   function Get_Address_Notes (Addr : Address_Type) return String is
   begin
      return To_String(Addr.Address_Notes);
   end Get_Address_Notes;


end work.punks.Address;
