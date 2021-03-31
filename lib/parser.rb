# frozen_string_literal: true

require 'validators/argument_validator'
require 'actions/query_handler'
require 'output/result_output'

# This module is a script entry point
module Parser
  include ResultOutput
  def parse(path = nil)
    validator = ArgumentValidator.new(path)
    return console_output(validator.error_message) unless validator.valid?

    handler = QueryHandler.new
    File.open(path.to_s, 'r').each { |line| handler.process_line(line) }

    console_output(handler.history.top_visited_queries, 'visits')
    console_output(handler.history.top_visited_uniq_queries, 'unique views')
  end
end
