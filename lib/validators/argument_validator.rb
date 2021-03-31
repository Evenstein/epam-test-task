# frozen_string_literal: true

class ArgumentValidator
  ARGUMENT_EMPTY = 'No file added'
  FILE_NOT_EXISTS = 'File does not exists'
  FILE_EMPTY = 'File is empty'
  WRONG_FORMAT = 'File have wrong format'
  VALID_FILE_FORMATS = %w[.log].freeze

  attr_reader :error_message

  def initialize(path)
    @path = path
  end

  def valid?

  end
end
