class Api::V1::CategoriesController < ApplicationController

    def search
        categories = Category.where(name: params[:name]).first
        render json: categories&.poems
    end

    def index
       
        categories = Category.all

         render json: CategorySerializer.new(categories)
    end

    def show
       if category = Category.find(params[:id])
         category.poems
         render json: CategorySerializer.new(categories)
    else
      render json: {message: "Category was not found!"}
        end
    end


end
