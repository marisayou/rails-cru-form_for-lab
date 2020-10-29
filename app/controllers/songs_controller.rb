class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
        @genre = Genre.find(@song.genre_id)
        @artist = Artist.find(@song.artist_id)
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(permit_params)
        redirect_to song_path(@song)
    end

    def edit 
        @song = Song.find(params[:id])
        render 'new.html.erb'
    end

    def update
        @song = Song.find(params[:id])
        @song.update(permit_params)
        redirect_to song_path(@song)
    end

    private
    def permit_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end