with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;

with Ada.Containers.Vectors;
with Ada.Calendar;

with Work.Punks.Authority;

package work.punks.Company_Types is

    type Type_Of_Contact_Enum is (Phone, Email, Messenger, Fax);
   
     type Contact_Type is tagged record
      Contact_Kind  : Type_Of_Contact_Enum;
      Value         : Unbounded_String;
      Description   : Unbounded_String;
      Is_Available  : Boolean;
   end record;
   
   type Contact_Access is access all Contact_Type'Class;
   
   package Contact_Vectors is new Ada.Containers.Vectors
  (Index_Type   => Natural,
   Element_Type => Contact_Access);

Subtype Contact_List is Contact_Vectors.Vector;
   
   type Address_Type is tagged record
      
      Country_Name     : Unbounded_String;
      State_Province   : Unbounded_String;
      City_Name        : Unbounded_String;
      Postal_Code      : Unbounded_String;
      Street_Name      : Unbounded_String;
      Building_Number  : Unbounded_String;
      Apartment_Number : Unbounded_String;
      PO_Box           : Unbounded_String;
      Address_Notes    : Unbounded_String;
      
   end record;
   
   type Address_Access is access all Address_Type'Class;
   
   type Company_Type is tagged record
   
      Company_Name        : Unbounded_String;
      Legal_Entity_Type   : Unbounded_String;
      Description         : Unbounded_String;
      Registration_Number : Unbounded_String;
      Tax_ID              : Unbounded_String;
      Website_URL         : Unbounded_String;
      Email_Address       : Unbounded_String;
      Phone_Number        : Unbounded_String;
      Company_Address     : Address_Access;
      Contacts            : Contact_List;
      Edited_By           : Work.Punks.Authority.User_Access;
      Created_At          : Ada.Calendar.Time;
      Updated_At          : Ada.Calendar.Time;
      
   end record;
   
   type Company_Access is access all Company_Type'Class;
   
  
   
end work.punks.Company_Types;
