class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :edit, :update, :destroy]

    def index
        @artists = Artist.all
    end

    def show
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artists_path
    end

    def edit
    end

    def update
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    def destroy
        @artist.destroy
        redirect_to artists_path
    end

    private

    def set_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end
