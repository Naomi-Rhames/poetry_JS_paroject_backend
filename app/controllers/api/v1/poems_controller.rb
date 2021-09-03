class Api::V1::PoemsController < ApplicationController


    def create
        poem = Poem.new(poem_params)
        if poem.save
            render json: poem, status: :accepted
        else
            render json: {errors: poem.errors.full_messages}, status: :unprocessible_entity #error 422
        end
    end


    def index
        poems = Poem.all
        # render json: poems #making sure that rails can read the data from JSON
        render json: PoemSerializer.new(poems)
    end


    private
    def poem_params
         #.require is requiring the top level hash
         #.permit is perrmitting the attributes
        params.require(:poem).permit(:title, :author, :stanza, :image_url, :category_id)
    end

end
