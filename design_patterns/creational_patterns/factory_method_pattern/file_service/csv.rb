# frozen_string_literal: true

require_relative 'base'

# This class represents the CSV file reader
module FileService
  class CSV < FileService::Base
    def read
      puts "CSVReader is reading the file '#{@file_path}'"
    end

    def extension
      '.csv'
    end
  end
end
