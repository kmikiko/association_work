class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(blog_id: params[:blog_id])
    redirect_to blogs_path, notice: "#{favorite.blog.user.name} さんのブログをお気に入りしました"
  end

  def destroy
    favorite = current_user.favorites.find_by(favorite_id: params[:id]).destroy
    redirect_to blogs_path, notice: "#{favorite.blog.user.name} さんのブログをお気に入り解除しました"
  end
end
