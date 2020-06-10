class GenresController < ApplicationController
    def show
        @genre = Genre.find(params[:id])
    end
    
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params(:name))
        if @genre.save
          flash[:success] = "Genre successfully created"
  
          redirect_to genre_path(@genre)
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def edit
        @genre =  Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        if @genre.update_attributes(genre_params(:name))
          flash[:success] = "Genre was successfully updated"
          redirect_to @genre
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end

    def index
      @genres=Genre.all
    end
    
    

    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end
    
    
end
