class CarsController < ApplicationController
    def index
      @post = Car.all
    end

    def new
      @post = Car.new
    end

    def create
      @post = Car.new(params[:car])

      if @post.save
        redirect_to :action => :index
      else
        render 'new'
      end
    end
    def show
      @post = Car.find(params[:id])
    end
    def edit
      @post = Car.find(params[:id])
    end
    def update
      @post = Car.find(params[:id])

      if @post.update_attributes(params[:car])
        redirect_to :action => :index
      else
        render 'edit'
      end
    end
    def destroy
      @post = Car.find(params[:id])
      @post.destroy
      redirect_to :action => :index
    end
end
