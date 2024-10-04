# frozen_string_literal: true

module FileService
  class Base
    def initialize(file_path)
      @file_path = file_path
    end

    def read(file_path)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'."
    end
  end
end
