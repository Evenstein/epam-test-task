# frozen_string_literal: true

require 'factory_bot'

FactoryBot.define do
  factory :validator, class: 'ArgumentValidator' do
    path { File.join(Dir.pwd, 'spec', 'fixtures', 'files', 'weblog.log') }

    trait :wrong_format do
      path { File.join(Dir.pwd, 'spec', 'fixtures', 'files', 'weblog.lag') }
    end

    trait :empty_file do
      path { File.join(Dir.pwd, 'spec', 'fixtures', 'files', 'weblog1.log') }
    end

    trait :not_exists do
      path { File.join(Dir.pwd, 'spec', 'fixtures', 'files', 'server.log') }
    end

    trait :empty_path do
      path { nil }
    end

    initialize_with { new(path) }
  end
end
