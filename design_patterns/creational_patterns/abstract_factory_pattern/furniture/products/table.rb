# frozen_string_literal: true

require_relative '../base'

# This class represents the table product
module Furniture
  module Products
    class Table < Furniture::Base
      def name
        'table'
      end

      def leg_count
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end
    end
  end
end
