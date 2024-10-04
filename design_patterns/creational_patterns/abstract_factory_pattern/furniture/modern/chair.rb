# frozen_string_literal: true

require_relative '../products/chair'

# This class represents the modern chair product
module Furniture
  module Modern
    class Chair < Furniture::Products::Chair
      def category
        'modern'
      end

      def manufacturer
        'Solomon & Sons'
      end

      def material
        'wood'
      end

      def price
        80
      end

      def leg_count
        6
      end
    end
  end
end
