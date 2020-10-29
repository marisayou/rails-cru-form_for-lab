class ArtistsController < ApplicationController

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(permit_params)
        redirect_to artist_path(@artist)
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def edit
        @artist = Artist.find(params[:id])
        render 'new.html.erb'
    end

    def update
        @artist = Artist.update(permit_params)
        redirect_to artist_path(@artist)
    end

    private
    def permit_params
        params.require(:artist).permit(:name, :bio)
    end

end