# frozen_string_literal: true

# This class represents an history of server requests
class History
  attr_reader :log

  def initialize
    @log = []
  end

  def log_history(item)
    @log << item
  end
end
