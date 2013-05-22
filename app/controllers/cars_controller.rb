class CarsController < ApplicationController
    def index
      @post = Owner.find(params[:owner_id])
      @post_sh = @post.cars.all
    end

    def new
      @post = Car.new
    end

    def create
      @post = Owner.find(params[:owner_id])
      @post_sh = @post.cars.create(params[:post])
      redirect_to owner_cars_path

    end
    def show
      @post = Car.find(params[:id])
    end
    def edit
      @post = Car.find(params[:id])
    end
    def update
      @post = Car.find(params[:id])

      if @post.update_attributes(params[:cars])
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
