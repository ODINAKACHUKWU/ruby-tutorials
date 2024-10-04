# frozen_string_literal: true

require_relative '../products/chair'

# This class represents the vintage chair product
module Furniture
  module Vintage
    class Chair < Furniture::Products::Chair
      def category
        'vintage'
      end

      def manufacturer
        'Solomon & Sons'
      end

      def material
        'glass'
      end

      def price
        150
      end

      def leg_count
        8
      end
    end
  end
end
