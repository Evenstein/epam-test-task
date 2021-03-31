# frozen_string_literal: true

# This class validates an arguments from CLI
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
    argument_present? && file_exists? && file_has_content? && right_format?
  end

  private

  def argument_present?
    return true if @path

    raise_error(ARGUMENT_EMPTY)
  end

  def file_exists?
    return true if File.exist?(@path)

    raise_error(FILE_NOT_EXISTS)
  end

  def file_has_content?
    return true unless @path && File.zero?(@path)

    raise_error(FILE_EMPTY)
  end

  def right_format?
    return true if @path && VALID_FILE_FORMATS.include?(File.extname(@path))

    raise_error(WRONG_FORMAT)
  end

  def raise_error(message)
    @error_message = message

    false
  end
end
