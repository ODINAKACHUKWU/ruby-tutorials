# frozen_string_literal: true

require_relative '../base'

# This class represents the chair product
module Furniture
  module Products
    class Chair < Furniture::Base
      def name
        'chair'
      end

      def leg_count
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end
    end
  end
end
