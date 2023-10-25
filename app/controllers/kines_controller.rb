class KinesController < ApplicationController
  def index
    @kines = Kine.all
  end

  def show
    @kine = Kine.find(params[:id])
  end

  def new
    @kine = Kine.new
  end

  def create
    @kine = Kine.new(kine_params)
    if @kine.save
      redirect_to @kine
    else
      render 'new'
    end
  end

  def edit
    @kine = Kine.find(params[:id])
  end

  def update
    @kine = Kine.find(params[:id])
    if @kine.update(kine_params)
      redirect_to @kine
    else
      render 'edit'
    end
  end

  def destroy
    @kine = Kine.find(params[:id])
    @kine.destroy
    redirect_to kines_path
  end

  private
    def kine_params
      params.require(:kine).permit(:name, :region)
    end
end
