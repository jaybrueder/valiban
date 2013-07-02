# Based on iban-tools by iulianu
# https://github.com/iulianu/iban-tools

require 'yaml'

module Valiban

  class Rules

    def self.load(country_code)
      begin
        YAML.load(File.read(File.expand_path("../iban_rules.yml", __FILE__)))[country_code.downcase]
      rescue Errno::ENOENT
        {}
      end
    end

  end

end