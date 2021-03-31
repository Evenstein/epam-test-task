# frozen_string_literal: true

require 'factory_bot'

FactoryBot.define do
  factory :line do
    query { '/index' }
    ip { '192.168.100.1' }

    initialize_with { new(query, ip) }
  end
end
