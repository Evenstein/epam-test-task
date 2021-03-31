# frozen_string_literal: true

require 'spec_helper'
require './lib/validators/argument_validator'

describe ArgumentValidator do
  describe '#valid?' do
    context 'when parameter is not present' do
      let(:validator) { build(:validator, :empty_path) }

      it 'returns false' do
        expect(validator.valid?).to be false
      end

      it 'have not present error message' do
        validator.valid?
        expect(validator.error_message).to eq(ArgumentValidator::ARGUMENT_EMPTY)
      end
    end

    context 'when file does not exists' do
      let(:validator) { build(:validator, :not_exists) }

      it 'returns false' do
        expect(validator.valid?).to be false
      end

      it 'returns does not exists error message' do
        validator.valid?
        expect(validator.error_message).to eq(ArgumentValidator::FILE_NOT_EXISTS)
      end
    end

    context 'when file exists and have no content' do
      let(:validator) { build(:validator, :empty_file) }

      it 'returns false' do
        expect(validator.valid?).to be false
      end

      it 'returns no content error message' do
        validator.valid?
        expect(validator.error_message).to eq(ArgumentValidator::FILE_EMPTY)
      end
    end

    context 'when file exists have content and wrong format' do
      let(:validator) { build(:validator, :wrong_format) }

      it 'returns false' do
        expect(validator.valid?).to be false
      end

      it 'returns wrong file format message' do
        validator.valid?
        expect(validator.error_message).to eq(ArgumentValidator::WRONG_FORMAT)
      end
    end

    context 'when file exists have content and right format' do
      let(:validator) { build(:validator) }

      it 'returns true' do
        expect(validator.valid?).to be true
      end

      it 'have no error message' do
        validator.valid?
        expect(validator.error_message).to be_nil
      end
    end
  end
end
