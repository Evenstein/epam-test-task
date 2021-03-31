# frozen_string_literal: true

require 'validators/argument_validator'

module Parser
  def parse(path = nil)
    validator = ArgumentValidator.new(path)
    return puts validator.error_message unless validator.valid?
  end
end
