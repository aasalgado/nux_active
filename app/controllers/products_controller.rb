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

  def destroy 
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to(products_path)
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :img_url, :price, :description))
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def new
    @product =  Product.new 
  end



end
