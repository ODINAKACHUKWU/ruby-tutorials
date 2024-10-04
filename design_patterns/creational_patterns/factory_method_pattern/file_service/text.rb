# frozen_string_literal: true

require_relative 'base'

# This class represents the text file reader
module FileService
  class Text < FileService::Base
    def read
      puts "TextReader is reading the file '#{@file_path}'"
    end

    def extension
      '.txt'
    end
  end
end
