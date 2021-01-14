class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    respond_to do |format|
      if product.save
        format.html {redirect_to products_path, notice: "product saved!"}
      else
        format.html { render :new }
      end
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :rating, :price, :photo)
  end
end
