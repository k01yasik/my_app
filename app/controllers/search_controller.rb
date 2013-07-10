class SearchController < ApplicationController
  def show
    @result = Posti.search params[:search], :page =>params[:page], per_page: 20
  end
end
