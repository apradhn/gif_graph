class SearchesController < ApplicationController
  def index
    
  end

  def create
    @search_results = Giphy.new(params[:q]).search

    respond_to do |format|
      format.html {redirect_to searches_path}
      format.js {}
    end
  end

end
