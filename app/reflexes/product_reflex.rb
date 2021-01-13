class ProductReflex < StimulusReflex::Reflex

  def change_in_cart
    product = Product.find(element.dataset.id)
    status = product.in_cart
    product.update(in_cart: !status)
  end


end
