class PostisController < ApplicationController
  def index
    @pos = Posti.paginate(:page => params[:page])
  end
  def show
    @pos = Posti.find(params[:id])
  end
end
