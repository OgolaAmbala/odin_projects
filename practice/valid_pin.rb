# frozen_string_literal: true

# ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot
# contain anything but exactly 4 digits or exactly 6 digits.

# If the function is passed a valid PIN string, return true, else return false.

def validate_pin(pin)
  pin.match?(/\A\d{4}\z|\A\d{6}\z/)
end

p validate_pin('1111')
p validate_pin('123456')
p validate_pin('12')
p validate_pin('1')
