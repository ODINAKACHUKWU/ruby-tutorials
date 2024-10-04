# frozen_string_literal: true

require_relative 'base'

# This class represents the JSON file reader
module FileService
  class JSON < FileService::Base
    def read
      puts "JSONReader is reading the file '#{@file_path}'"
    end

    def extension
      '.json'
    end
  end
end
