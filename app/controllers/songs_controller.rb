class SongsController < ApplicationController
    def new
        @song = Song.new
    end

    def create
       
        @song = Song.new(song_params(:name, :artist_id, :genre_id))
        if @song.save
          flash[:success] = "Song successfully created"
          redirect_to @song
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def index
        @songs = Song.all
    end
    
    def show
        @song = Song.find(params[:id])
        @artist = Artist.find(@song.artist.id)
        @genre = Genre.find(@song.genre.id)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        if @song.update_attributes(song_params(:name, :artist_id, :genre_id))
          flash[:success] = "Song was successfully updated"
          redirect_to @song
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end
    
    
    
    
    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end
    
end
