
with Ada.Unchecked_Deallocation;

package body work.punks.Contact is
   
   type Contact_Ptr is access all Contact_Type;
   
procedure Free is
     new Ada.Unchecked_Deallocation(Contact_Type, Contact_Ptr);

   procedure Free_Contact(Contact_P : in out Contact_Access) is
   Temp : Contact_Ptr;
begin
   if Contact_P /= null then
      Temp := Contact_Ptr(Contact_P);
      Free(Temp);
      Contact_P := null;
   end if;
end Free_Contact;

   ------------------
   -- Setters --
   ------------------

   procedure Set_Contact_Kind
     (Contact : in out Contact_Access; Kind : Type_Of_Contact_Enum) is
   begin
      Contact.Contact_Kind := Kind;
   end Set_Contact_Kind;

   procedure Set_Value
     (Contact : in out Contact_Access; Value : in String) is
   begin
      Contact.Value := To_Unbounded_String(Value);
   end Set_Value;

   procedure Set_Description
     (Contact : in out Contact_Access; Desc : in String) is
   begin
      Contact.Description := To_Unbounded_String(Desc);
   end Set_Description;

   procedure Set_Is_Available
     (Contact : in out Contact_Access; Available : in Boolean) is
   begin
      Contact.Is_Available := Available;
   end Set_Is_Available;

   ------------------
   -- Getters (Fixed) --
   ------------------

   function Get_Contact_Kind
     (Contact : Contact_Access) return Type_Of_Contact_Enum is
   begin
      return Contact.Contact_Kind;
   end Get_Contact_Kind;

   function Get_Value
     (Contact : Contact_Access) return String is
   begin
      return To_String(Contact.Value);
   end Get_Value;

   function Get_Description
     (Contact : Contact_Access) return String is
   begin
      return To_String(Contact.Description);
   end Get_Description;

   function Get_Is_Available
     (Contact : Contact_Access) return Boolean is
   begin
      return Contact.Is_Available;
   end Get_Is_Available;


end work.punks.Contact;
