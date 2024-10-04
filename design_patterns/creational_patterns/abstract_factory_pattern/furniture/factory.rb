# frozen_string_literal: true

require_relative 'regular/chair'
require_relative 'regular/table'
require_relative 'modern/chair'
require_relative 'modern/table'
require_relative 'vintage/chair'
require_relative 'vintage/table'

module Furniture
  class Factory
    TYPES = {
      vintage_chair: Furniture::Vintage::Chair,
      vintage_table: Furniture::Vintage::Table,
      modern_chair: Furniture::Modern::Chair,
      modern_table: Furniture::Modern::Table,
      regular_chair: Furniture::Regular::Chair,
      regular_table: Furniture::Regular::Table
    }.freeze

    class << self
      def for(product, category)
        raise ArgumentError, "#{product} is not a recognized product" unless valid_product?(product)
        return TYPES["regular_#{product}".to_sym].new unless valid_category?(category)

        TYPES["#{category}_#{product}".to_sym].new
      end

      def products
        TYPES.keys.map { |factory| factory.to_s.split('_').last }.uniq
      end

      def categories
        TYPES.keys.map { |factory| factory.to_s.split('_').first }.uniq
      end

      private

      def valid_product?(product)
        products.include?(product)
      end

      def valid_category?(category)
        categories.include?(category)
      end
    end
  end
end
