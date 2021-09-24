class Api::V1::CategoriesController < ApplicationController

    def index
       
        categories = Category.all

         render json: CategorySerializer.new(categories)
    end

#     def show
#        if categories = Category.find(params[:id])
#          categories.poems
#          render json: CategorySerializer.new(categories)
#     else
#         categories = Category.all

#          render json: CategorySerializer.new(categories)
#         end
#     end
# end
