
# frozen_string_literal: true

require_relative '../products/table'

# This class represents the modern table product
module Furniture
  module Modern
    class Table < Furniture::Products::Table
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
        100
      end

      def leg_count
        6
      end
    end
  end
end
