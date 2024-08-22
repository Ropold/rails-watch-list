class BookmarksController < ApplicationController
  def new
    @bookmarks = Bookmark.new
  end
  def create
    @bookmarks = Bookmark.new(bookmark_params)
    @bookmarks.save
    redirect_to bookmarks_path(@bookmarks)
  end

  def destroy
    @bookmarks = Bookmark.find(params[:id])
    @bookmarks.destroy
    redirect_to bookmarks_path(@bookmarks)
  end

  private

  def restaurant_params
    params.require(:bookmark).permit(:comment)
  end
end
