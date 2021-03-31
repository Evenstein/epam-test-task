# frozen_string_literal: true

require 'spec_helper'
require 'pty'

describe 'Inetgration tests' do
  it 'returns error message due no argument present' do
    PTY.spawn('rake run') do |output, _input|
      output.readpartial 1024
      expect(output.readline.chomp).to eq('No file added')
    end
  end

  it 'returns right message due no argument present' do
    PTY.spawn('rake run ~/ruby_app/webserver.log') do |output, _input|
      output.readpartial 1024
      expect(output.readline.chomp).to eq('-----------------------------------')
      expect(output.readline.chomp).to eq('/about/2 90 visits')
      expect(output.readline.chomp).to eq('/contact 89 visits')
      expect(output.readline.chomp).to eq('/index 82 visits')
      expect(output.readline.chomp).to eq('/about 81 visits')
      expect(output.readline.chomp).to eq('/help_page/1 80 visits')
      expect(output.readline.chomp).to eq('/home 78 visits')
      expect(output.readline.chomp).to eq('-----------------------------------')
      expect(output.readline.chomp).to eq('/index 23 unique views')
      expect(output.readline.chomp).to eq('/home 23 unique views')
      expect(output.readline.chomp).to eq('/contact 23 unique views')
      expect(output.readline.chomp).to eq('/help_page/1 23 unique views')
      expect(output.readline.chomp).to eq('/about/2 22 unique views')
      expect(output.readline.chomp).to eq('/about 21 unique views')
    end
  end
end
