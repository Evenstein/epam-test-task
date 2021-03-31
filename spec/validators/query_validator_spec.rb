# frozen_string_literal: true

require 'spec_helper'
require './lib/validators/query_validator'

describe QueryValidator do
  describe '#valid?' do
    context 'when sad (unhappy) path' do
      let(:path1) { 'http://example.com' }
      let(:path2) { 'http://example.com:8080' }
      let(:path3) { 'http://example.com/index' }
      let(:path4) { '/index.php' }
      let(:path5) { '/index=?' }

      it 'return false with path `http://example.com`' do
        expect(described_class.valid?(path1)).to be false
      end

      it 'return false with path `http://example.com:8080`' do
        expect(described_class.valid?(path2)).to be false
      end

      it 'return false with path `http://example.com/index`' do
        expect(described_class.valid?(path3)).to be false
      end

      it 'return false with path `/index.php`' do
        expect(described_class.valid?(path4)).to be false
      end

      it 'return false with path `/index=?`' do
        expect(described_class.valid?(path5)).to be false
      end
    end

    context 'when happy path' do
      let(:path1) { '/index' }
      let(:path2) { '/about/contacts' }
      let(:path3) { '/about/contacts/phones' }
      let(:path4) { '/help_me/1' }

      it 'return true with path `/index`' do
        expect(described_class.valid?(path1)).to be true
      end

      it 'return true with path `/about/contacts`' do
        expect(described_class.valid?(path2)).to be true
      end

      it 'return true with path `/about/contacts/phones`' do
        expect(described_class.valid?(path3)).to be true
      end

      it 'return true with path `/help_me/1`' do
        expect(described_class.valid?(path4)).to be true
      end
    end
  end
end
