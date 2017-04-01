class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @products = Products.new
    @products.name = params[:name]
    @products.description = params[:description]
    @products.picture_url = params[:picture_url]
    @products.price = params[:price]
    
    if @product.save
    redirect_to '/products'
    else 
        render action: "new"
    end
  end 
  
  def edit 
    @product = Product.find params[:id]
  end
  
  def update 
    @products = Products.find params[:id]
    @products.name = params[:name]
    @products.description = params[:description]
    @products.picture_url = params[:picture_url]
    @products.price = params[:price]
    @product.save
    
    if @product.save
      redirect_to '/products'
    else
      render action: 'edit'
    end
  end 
  
  def show 
      @product = Product.find params[:id]
  end
end
