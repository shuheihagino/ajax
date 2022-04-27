class FavoritesController < ApplicationController

  def create
    respond_to do |format|#
    current_user.favorites.create(blog_id: params[:blog_id])
    #redirect_to blogs_path
    format.js { render :index }#
    end#
  end

  def destroy
    respond_to do |format|
    current_user.favorites.find_by(id: params[:id]).destroy
    #redirect_to blogs_path
    format.js { render :index }#
  end#
  end

end
