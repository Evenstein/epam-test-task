# frozen_string_literal: true

require 'spec_helper'
require './lib/actions/sort'
require './lib/entities/history'

describe Sort do
  let(:hash) do
    {
      '/index' => %w[1 1 2 2],
      '/index/1' => %w[1 2 3 4],
      '/index/2' => %w[1 2 3 4 5],
      '/index/3' => %w[1 2 3 4 5 5]
    }
  end

  describe '#sort_by_count' do
    let(:expected_hash) do
      {
        '/index/3' => %w[1 2 3 4 5 5],
        '/index/2' => %w[1 2 3 4 5],
        '/index/1' => %w[1 2 3 4],
        '/index' => %w[1 1 2 2]
      }
    end

    it 'returns sorted hash' do
      history = History.new
      expect(history.sort_by_count(hash)).to eq(expected_hash)
    end
  end

  describe '#sort_by_uniq_count' do
    let(:expected_hash) do
      {
        '/index/2' => %w[1 2 3 4 5],
        '/index/3' => %w[1 2 3 4 5],
        '/index/1' => %w[1 2 3 4],
        '/index' => %w[1 2]
      }
    end

    it 'returns sorted hash' do
      history = History.new
      expect(history.sort_by_uniq_count(hash)).to eq(expected_hash)
    end
  end
end
