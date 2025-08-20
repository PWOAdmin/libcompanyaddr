with AUnit.Simple_Test_Cases; use AUnit.Simple_Test_Cases;
with company_json_test;
package body Test_Lib is

    function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
  Ret.Add_Test (Test_Case_Access'(new company_json_test.Test));
      return Ret;
   end Suite;

end Test_Lib;
