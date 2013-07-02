require 'valiban'

module Valiban

  describe IBAN do

    before(:each) do
      @test_ibans = [
        ["AT754805700005040015", "AT", "00005040015", "48057"],
        ["DE89300400000771560000", "DE", "0771560000", "30040000"]
      ]
    end

    it "should break up an IBAN code into a bank code number" do
      @test_ibans.each do |iban|
        IBAN.get_bank_code_number(iban[0]).should == iban[3]
      end
    end

    it "should break up an IBAN code into a bank account number" do
      @test_ibans.each do |iban|
        IBAN.get_bank_account_number(iban[0]).should == iban[2]
      end
    end

    it "should get the country of an IBAN code" do
      @test_ibans.each do |iban|
        IBAN.get_country_code(iban[0]).should == iban[1]
      end
    end

  end

end