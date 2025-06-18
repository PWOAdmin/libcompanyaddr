with Work.Punks.Company_Types;
use Work.Punks.Company_Types;
with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;

package work.punks.Contact is

   
   -- Setters
   procedure Set_Contact_Kind
     (Contact : in out Contact_Access; Kind : Type_Of_Contact_Enum);

   procedure Set_Value
     (Contact : in out Contact_Access; Value : in String);

   procedure Set_Description
     (Contact : in out Contact_Access; Desc : in String);

   procedure Set_Is_Available
     (Contact : in out Contact_Access; Available : in Boolean);
-- Getters (updated)
function Get_Contact_Kind
  (Contact : Contact_Access) return Type_Of_Contact_Enum;

function Get_Value
  (Contact : Contact_Access) return String;

function Get_Description
  (Contact : Contact_Access) return String;

function Get_Is_Available
  (Contact : Contact_Access) return Boolean;

   -- Memory management
   procedure Free_Contact (Contact_P : in out Contact_Access);


end work.punks.Contact;
