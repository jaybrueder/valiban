require 'valiban'

module Valiban

  describe IBAN do

    it "should break up an IBAN code into bank account and bank number" do
      iban = "AT75380560005030010"

      IBAN.to_bank_account_number.should == ""
      IBAN.to_bank_code_number.should == ""
    end

  end

end