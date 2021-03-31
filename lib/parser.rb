# frozen_string_literal: true

require 'validators/argument_validator'

module Parser
  def parse(path = nil)
    validator = ArgumentValidator.new(path)
    return puts validator.error_message unless validator.valid?

    handler = QueryHandler.new
    File.open(path.to_s, 'r').each { |line| handler.process_line(line) }
  end
end
