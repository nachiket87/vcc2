# frozen_string_literal: true

class ProductComponent < ViewComponent::Base
  def initialize(product:)
    @product = product
  end

  private

  def in_cart?
    return @product.in_cart
  end

  def converted_price
    sprintf "%.2f", @product.price
  end

end
