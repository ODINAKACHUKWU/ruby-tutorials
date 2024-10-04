# frozen_string_literal: true

require_relative '../products/chair'

# This class represents the regular chair product
module Furniture
  module Regular
    class Chair < Furniture::Products::Chair
      def category
        'regular'
      end

      def manufacturer
        'Solomon & Sons'
      end

      def material
        'wood'
      end

      def price
        30
      end

      def leg_count
        4
      end
    end
  end
end
