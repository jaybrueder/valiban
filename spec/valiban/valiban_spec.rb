require 'valiban'

module Valiban

  describe IBAN do

    before(:each) do
      @test_iban = "AT75480570005040015"
    end

    it "should break up an IBAN code into a bank account number" do
      #IBAN.get_bank_account_number(@test_iban).should == ""
    end

    it "should break up an IBAN code into a bank code number" do
    end

    it "should get the country of an IBAN code" do
    end

  end

end