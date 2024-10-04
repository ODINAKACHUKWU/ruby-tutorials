# frozen string_literal: true

require_relative 'file_service/factory'

class Endpoint
  def self.get(params)
    file_path = params[:file_path]

    product = FileService::Factory.for(file_path)

    return if product.nil?

    puts <<~TEXT
      #{product.read}
      ---------------------------------------------------------------
      #{product.class} has successfully read the file '#{file_path}'.
      #{product.class} read the file '#{file_path}' because of its
      `#{product.extension}` extension.
    TEXT
  end
end

# Play around with the file_path parameter
params = { file_path: 'table.json' }
Endpoint.get(params)
