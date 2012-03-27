class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def bookmarks
    @title = "Bookmarks"
  end

end
