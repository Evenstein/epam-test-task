# frozen_string_literal: true

# This class is handle to process file content and to create / update history
class QueryHandler
  attr_reader :history

  def initialize
    @history = History.new
  end

  def process_line(line)
    query, ip = line.split(' ')

    if QueryValidator.valid?(query) && IpValidator.valid?(ip)
      query_line = Line.new(query, ip)
      @history.log_history(query_line) if query_line.query && query_line.ip
    end
  end
end
