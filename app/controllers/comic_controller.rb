class ComicController < ApplicationController
  def index
    
    if request.post? then
    end 

    @comics = Comic.page params[:page]
    #@page = params[:page].to_i
    #@page_num = 10
    #@record_count = Comic.where("id > 0").count
    #@comics = Comic.where("id > 0").order("sale DESC").offset(@page * @page_num).limit(@page_num)
    
    #@comics = Comic.all(:order => "sale DESC")

    @comics.each do |comic|
      #comic.writers = comic.writers.split(' ')
    end
    
    @titles = [
      "タイトル",
      "著者",
      "巻数",
      "発売日",
    ]
 end
end