# frozen_string_literal: true

require 'spec_helper'
require './lib/entities/history'

describe History do
  let(:history) { described_class.new }
  let(:log_item) { build(:line) }

  before { history.log_history(log_item) }

  context 'when log history' do
    it 'write query' do
      expect(history.log.first.query).to eq(log_item.query)
    end

    it 'write ip' do
      expect(history.log.first.ip).to eq(log_item.ip)
    end
  end
end
