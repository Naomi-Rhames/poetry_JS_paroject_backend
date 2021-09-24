class Api::V1::PoemsController < ApplicationController

    def create
        poem = Poem.new(poem_params)
        if poem.save
            render json: PoemSerializer.new(poem) #this render here is actually is turning this Poem into a hash and also a string so that it can be able to send Poems as a string format with another status code
        else
            render json: {errors: poem.errors.full_messages}, status: :unprocessable_entity #error 422
        end
    end



    def index
        poems = Poem.all
        # render json: poems #making sure that rails can read the data from JSON
        render json: PoemSerializer.new(poems)
    end

    def update
        poem = Poem.find(params[:id])
        if poem.update(poem_params)
            render json: PoemSerializer.new(poem), status: :accepted
        else
           
            render json: {errors: poem.errors.full_messages}, status: :unprocessable_entity
        end
    end


    private
    def poem_params
         #.require is requiring the top level hash
         #.permit is perrmitting the attributes
        params.require(:poem).permit(:title, :author, :genre, :stanza, :image_url, :category_id)
    end
    
end
