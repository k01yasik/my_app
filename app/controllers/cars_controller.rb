class CarsController < ApplicationController
    def index
      @post = Owner.find(params[:owner_id])
      @post_sh = @post.cars.all
    end

    def new
      @post_sh = Car.new
    end

    def create
      @post = Owner.find(params[:owner_id])
      @post_sh = @post.cars.create(params[:post_sh])
      redirect_to owner_cars_path

    end
    def show
      @post = Car.find(params[:id])
    end
    def edit
      @post = Owner.find(params[:owner_id])
      @post_sh = @post.cars.find(params[:id])
    end
    def update
      @post = Owner.find(params[:owner_id])
      @post_sh = @post.cars.find(params[:id])

      if @post_sh.update_attributes(params[:post_sh])
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
