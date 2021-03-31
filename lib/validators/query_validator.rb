# frozen_string_literal: true

# This class validates a query from `.log` file
class QueryValidator
  QUERY_VALIDATOR = %r/^(\/[a-z0-9_]+){1,3}$/

  def self.valid?(query)
    return true if QUERY_VALIDATOR.match?(query)

    false
  end
end
