class ProductsController < ApplicationController


  def index
    @products = Product.all
  end

  def update
    @products = product.find(params[:id])
    if @product.update(products_params)
      redirect_to(products_path)
    else
      render "added to cart"
    end
  end

  def show
  end

end
