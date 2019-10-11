# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.includes(:category).all
  end

  # def show
  #   @products = Category.find(params[:id])
  # end
end
