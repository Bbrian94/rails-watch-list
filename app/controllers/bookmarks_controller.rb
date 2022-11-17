class BookmarksController < ApplicationController
  before_action :set_list
  before_action :set_bookmark, only: [:edit, :update, :show, :delete]
end

def new
  @bookmark = Bookmark.new
end

def create
  @bookmark = Bookmark.new(bookmark_params)
  @bookmark.list = @list
  if @bookmark.save
    redirect_to list_path(@list)
  else
    render :new
  end
end

def destroy
  @bookmark.destroy
  redirect_to list_path(@bookmark)
end
