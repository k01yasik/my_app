class OwnersController < ApplicationController
  def index
    @owner = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(params[:owner])

    if @owner.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  def show
    @owner = Owner.find(params[:id])
  end
  def edit
    @owner = Owner.find(params[:id])
  end
  def update
    @owner = Owner.find(params[:id])

    if @owner.update_attributes(params[:Owners])
      redirect_to :action => :index
    else
      render 'edit'
    end
  end
  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy
    redirect_to :action => :index
  end
end
