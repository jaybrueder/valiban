# Based on iban-tools by iulianu
# https://github.com/iulianu/iban-tools

module Valiban

  class IBAN

    def self.get_bank_code_number(code)
      new(code).bank_code_number
    end

    def self.get_bank_account_number(code)
      new(code).bank_account_number
    end

    def self.get_country_code(code)
      new(code).country_code
    end

    def initialize( code )
      @code = code
    end

    def base_length
      4 #country_code + control_number always amount to 4
    end

    def code
      @code
    end

    def country_code
      @code[0..1]
    end

    def bank_code_number
      @code[base_length..bank_code_number_length]
    end

    def bank_account_number
      @code[bank_account_number_start..@code.length]
    end

    # Load and cache the default rules from rules.yml
    def rules
      @rules ||= Rules.load(self.country_code)
    end

    def bank_code_number_length
      rules['bank_code_number_length'] + (base_length - 1)
    end

    def bank_account_number_start
      bank_code_number_length + 1
    end

  end

end