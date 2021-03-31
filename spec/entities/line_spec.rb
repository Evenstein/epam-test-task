# frozen_string_literal: true

require 'spec_helper'
require './lib/entities/line'

describe Line do
  let(:line) { build(:line) }
  let(:query) { '/index' }
  let(:ip) { '192.168.100.1' }

  it 'returns valid query' do
    expect(line.query).to eq(query)
  end

  it 'returns valid ip' do
    expect(line.ip).to eq(ip)
  end
end
