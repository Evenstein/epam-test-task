# frozen_string_literal: true

# This class validates an IPv4 from `.log` file
class IpValidator
  V4_VALIDATOR = /^((?!000)(?!00)(\d{1,3})(\.(?!$)|$)){4}$/

  def self.valid?(ip)
    return true if V4_VALIDATOR.match?(ip)

    false
  end
end
