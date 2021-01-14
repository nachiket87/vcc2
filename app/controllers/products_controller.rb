class ProductsController < ApplicationController
  include CableReady::Broadcaster
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html {redirect_to root_path, notice: "product saved!"}
        cable_ready["products"].insert_adjacent_html(
          selector: "#flower-container",
          position: "afterbegin",
          html: render_to_string(ProductComponent.new(product: @product), layout: false)
        )
        cable_ready.broadcast
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
