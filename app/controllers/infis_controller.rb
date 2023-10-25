class InfisController < ApplicationController

  def index
    @infis = Infi.all
  end

  def show
    @infi = Infi.find(params[:id])
  end

  def new
    @infi = Infi.new
  end

  def create
    @infi = Infi.new(infi_params)
    if @infi.save
      redirect_to infis_path, notice: 'Infirmier créé avec succès.'
    else
      render 'new'
    end
  end

  def edit
    @infi = Infi.find(params[:id])
  end

  def update
    @infi = Infi.find(params[:id])
    if @infi.update(infi_params)
      redirect_to @infi
    else
      render 'edit'
    end
  end

  def destroy
    @infi = Infi.find(params[:id])
    @infi.destroy
    redirect_to infis_path, notice: 'Infirmier supprimé avec succès.'
  end

  private

  def infi_params
    params.require(:infi).permit(:num, :nom, :region)
  end
end
