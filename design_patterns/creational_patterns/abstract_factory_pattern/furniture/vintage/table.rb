# frozen_string_literal: true

require_relative '../products/table'

# This class represents the vintage table product
module Furniture
  module Vintage
    class Table < Furniture::Products::Table
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
        180
      end

      def leg_count
        8
      end
    end
  end
end
