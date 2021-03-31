# frozen_string_literal: true

require 'spec_helper'
require './lib/output/result_output'

describe ResultOutput do
  let(:test_module) { Class.new { extend ResultOutput } }

  context 'when simple info output' do
    let(:result) { "Test result\n" }

    it 'print out `Test result` string' do
      expect { test_module.console_output(result) }.to output(result).to_stdout
    end
  end

  context 'when history output' do
    let(:delimiter) { "-----------------------------------\n" }
    let(:hash) { { 'test_key' => [1, 2, 3, 4, 5] } }
    let(:ending) { "End\n" }
    let(:expected) { "test_key 5 #{ending}" }

    it 'print out result with ending' do
      expect { test_module.console_output(hash, ending) }.to output("#{delimiter}#{expected}").to_stdout
    end
  end
end
