Gem::Specification.new do |s|
  s.name        = 'valiban'
  s.version     = '0.0.1'
  s.date        = '2013-07-02'
  s.summary     = "Valiban"
  s.description = "A gem to transform an IBAN number into europen account- and banknumbers"
  s.authors     = ["Jürgen Brüder"]
  s.email       = 'hello@juergenbrueder.com'
  s.requirements << 'none'
  s.require_path = 'lib'
  s.files       = [
    "README.md",
    "lib/valiban.rb",
    "lib/valiban/iban.rb",
    "lib/valiban/rules.rb",
    "lib/valiban/iban_rules.yml"
  ]
  s.homepage    =
    'https://github.com/jaybrueder/valiban'
end