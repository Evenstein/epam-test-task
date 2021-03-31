# frozen_string_literal: true

require 'spec_helper'
require './lib/validators/ip_validator'

describe IpValidator do
  describe '#valid?' do
    context 'when IPv4 is incorrect' do
      let(:ip1) { '00.0.0.256' }
      let(:ip2) { '101.000.72.66' }
      let(:ip3) { '101.72.66' }
      let(:ip4) { '101.72.66.77.22' }

      it 'returns false when IP is `00.0.0.256`' do
        expect(described_class.valid?(ip1)).to be false
      end

      it 'returns false when IP is `101.000.72.66`' do
        expect(described_class.valid?(ip2)).to be false
      end

      it 'returns false when IP is `101.72.66`' do
        expect(described_class.valid?(ip3)).to be false
      end

      it 'returns false when IP is `101.72.66.77.22`' do
        expect(described_class.valid?(ip4)).to be false
      end
    end

    context 'when IPv4 is correct' do
      let(:ip1) { '192.168.0.1' }

      it 'returns true when IP is `192.168.0.1`' do
        expect(described_class.valid?(ip1)).to be true
      end
    end
  end
end
