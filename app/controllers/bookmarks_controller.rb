class BookmarksController < ApplicationController
  
    def index
     @title = "Index"
    @bookmarks = Bookmark.all
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
def bookmarks
     @title = "All Bookmarks"
    
    respond_to do |format|
      format.html # bookmarks.html.erb
    end
  end
  
    def new
      @title = "New"
   	 @bookmark = Bookmark.new
   	 respond_to do |format|
      format.html # new.html.erb
   end
   end
   
   def show
    @title = "Show"
	@bookmark = Bookmark.find(params[:id])
   	 respond_to do |format|
      format.html # new.html.erb  
   end
 end  
 
   # GET /bookmarks/1/edit
   def edit
      @title = "Edit"
      @bookmark = Bookmark.find(params[:id])
   end



   def create
   	 @bookmark = Bookmark.new(params[:bookmark])

     if @bookmark.save
        redirect_to(@bookmark, :notice => 'Bookmark was successfully created.') 
    else
         render :action => "new" 
   end
   end


   def update
   	 @bookmark = Bookmark.find(params[:id])
   	     respond_to do |format|
      if @bookmark.update_attributes(params[:bookmark])
      	 format.html { redirect_to(@bookmark, :notice => 'Bookmark was successfully updated.') }
      else
         format.html { render :action => "edit" }
      end
   end
 end


  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    respond_to do |format|
      format.html { redirect_to(bookmarks_url) }

    end
  end

end
