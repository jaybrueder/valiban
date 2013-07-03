# valiban
valiban converts IBAN code into bank account numbers and bank code numbers.
In the future, it will also support validation of IBAN codes.

## Credit
Some of the basic ideas of this gem were taken from iulianu's iban-tools
You'll find the [source code](http://github.com/iulianu/iban-tools) on Github.

## INSTALLATION

```ruby
gem install valiban
```

## USAGE

```ruby
require 'valiban'
```

### Get the bank code number

```ruby
Valiban::IBAN.get_bank_code_number("AT754805700005040015") => "48057"
```

### Get the bank account number

```ruby
Valiban::IBAN.get_bank_account_number("AT754805700005040015") => "00005040015"
```

### Get the country code

```ruby
Valiban::IBAN.get_country_code("AT754805700005040015") => "AT"
```

## Future

- I also want to add validations for IBAN codes in the future.
- Add more country rules.
- Maybe I extend this library to deal with BIC/SWIFT codes as well


