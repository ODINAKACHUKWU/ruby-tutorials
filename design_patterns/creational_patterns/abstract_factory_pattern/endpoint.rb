# frozen string_literal: true

require_relative 'furniture/factory'

class Endpoint
  def self.get(params)
    product = params[:product]
    category = params[:category]

    # NOTE: This line is the key to this pattern. Furniture::Factory is
    # the `abstract factory`which is responsible for creating the product
    # object.
    product = Furniture::Factory.for(product, category)

    puts <<~TEXT
      This #{product.name} is a #{product.category} #{product.name} made
      of #{product.material}. The product is manufactured by #{product.manufacturer}
      and has #{product.leg_count} legs. It costs #{product.price} dollars.
    TEXT
  end
end

params = { product: 'chair', category: 'vintage' }
Endpoint.get(params)
