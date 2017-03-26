class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def new
  end
  
  def create
    @products = Products.new
    @products.name = params[:name]
    @products.description = params[:description]
    @products.picture_url = params[:picture_url]
    @products.price = params[:price]
    @product.save
    
    redirect_to '/products'
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
    
    redirect_to '/products'
  end 
  
  def show 
      @product = Product.find params[:id]
  end
end
