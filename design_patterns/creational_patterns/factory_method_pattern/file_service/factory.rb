# frozen_string_literal: true

require_relative 'text'
require_relative 'csv'
require_relative 'json'

module FileService
  class Factory
    class << self
      # NOTE: This line is the key to this pattern. `for` is
      # the `factory method` which is responsible for creating the product
      # object.
      def for(file_path)
        validate_presence_of(file_path)
        validate_file_extension(file_path)
        ext = File.extname(file_path)

        case ext
        when '.txt'
          FileService::Text.new(file_path)
        when '.csv'
          FileService::CSV.new(file_path)
        when '.json'
          FileService::JSON.new(file_path)
        else
          raise NotImplementedError, "FileService::Factory has not implemented a reader for the extension '#{ext}'."
        end
      end

      private

      def validate_presence_of(file_path)
        raise ArgumentError, 'Please provide a file path' if file_path.nil?
      end

      def validate_file_extension(file_path)
        raise ArgumentError, 'Please provide a file path with a valid extension' if File.extname(file_path).empty?
      end
    end
  end
end
