# frozen_string_literal: true

# This class represents a line from `.log` file
class Line
  attr_reader :query, :ip

  def initialize(query, ip)
    @query = query
    @ip = ip
  end
end
