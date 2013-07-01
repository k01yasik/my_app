class SearchController < ApplicationController
  def show
    @result = Posti.search params[:search]
  end
end
