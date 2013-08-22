class ComicsController < ApplicationController
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

 def show
  @comic = Comic.find(params[:id])
  @yonda = Comic.find(params[:id]).yondas.build
 end

 def create
    @comic = Comic.new(params[:comic])
    if @comic.save
      redirect_to comics_path, notice: '作成されました！'
    else
      render action: 'new'
    end
  end
end
