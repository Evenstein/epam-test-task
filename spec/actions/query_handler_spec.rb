# frozen_string_literal: true

require 'spec_helper'
require './lib/actions/query_handler'

describe QueryHandler do
  let(:handler) { described_class.new }
  let(:line) { '/index 192.168.100.1' }
  let(:query) { '/index' }
  let(:ip) { '192.168.100.1' }

  it 'creates QueryHandler object and linked History instance' do
    expect(handler.history).to be_present
  end

  context 'when process the line' do
    before { handler.process_line(line) }

    it 'log to history query' do
      expect(handler.history.log.first.query).to eq(query)
    end

    it 'log to history ip' do
      expect(handler.history.log.first.ip).to eq(ip)
    end
  end
end
