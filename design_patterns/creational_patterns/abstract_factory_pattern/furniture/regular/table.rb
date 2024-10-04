# frozen_string_literal: true

require_relative '../products/table'

# This class represents the regular table product
module Furniture
  module Regular
    class Table < Furniture::Products::Table
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
        60
      end

      def leg_count
        4
      end
    end
  end
end
