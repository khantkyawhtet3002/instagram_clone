class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(picture_id: params[:picture_id])
    redirect_to pictures_url, notice: "Registered #{favorite.picture.user.name}'s blog as a favorite"
  end
  
  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to pictures_url, notice: "Unfavorite #{favorite.picture.user.name}'s blog"
  end
end
