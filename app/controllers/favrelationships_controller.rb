class FavrelationshipsController < ApplicationController
    def create
        @micropost = Micropost.find( params[:micropost_id])
        current_user.favorite(@micropost)
        redirect_to root_path
    end
    def destroy
      @micropost = current_user.favoriterelationships.find(params[:id]).post
      current_user.unfavorite(@micropost)
      redirect_to root_path
    end
        
end
