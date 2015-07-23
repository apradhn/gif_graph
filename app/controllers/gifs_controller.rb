class GifsController < ApplicationController

  def index
    @gifs = Gif.all
  end

  def search
    @gif = Gif.new
  end

end
