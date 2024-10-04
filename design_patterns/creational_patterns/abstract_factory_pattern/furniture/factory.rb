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
        validate_presence_of(product)
        validate_product_inclusion(product)

        if unrecognized_category?(category)
          display_unrecognized_product_category_warning(product, category) unless category.nil?

          return TYPES["regular_#{product}".to_sym].new
        end

        TYPES["#{category}_#{product}".to_sym].new
      end

      def products
        TYPES.keys.map { |factory| factory.to_s.split('_').last }.uniq
      end

      def categories
        TYPES.keys.map { |factory| factory.to_s.split('_').first }.uniq
      end

      private

      def display_unrecognized_product_category_warning(product, category)
        puts <<~TEXT
          WARNING: The category '#{category}' is not a recognized category. Please
          choose from #{categories}. Defaulting to regular #{product}.
          ------------------------------------------------------------
        TEXT
      end

      def validate_product_inclusion(product)
        unless products.include?(product)
          raise ArgumentError, "'#{product}' is not a recognized product. Please choose from #{products}"
        end
      end

      def validate_presence_of(product)
        raise ArgumentError, 'Please provide a product' if product.nil?
      end

      def unrecognized_category?(category)
        !categories.include?(category)
      end
    end
  end
end
