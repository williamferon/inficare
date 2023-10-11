class ChannelsController < ApplicationController

  def index

    @channels = Channel.all

      if params[:query].present?
        query = "%#{params[:query]}%"
        sql_subquery = "nom LIKE :query"
        @channels = @channels.where(sql_subquery, query: query)
      end
  end

  def show
    @channel = Channel.find(params[:id])
  end

  def new
    @channel = Channel.new # Needed to instantiate the form_with
  end

  def create
    @channel = Channel.new(patient_params)
    if @channel.save
      redirect_to @channels, notice: 'patient créé avec succes.'
    else
      render :new
    end
    # No need for app/views/restaurants/create.html.erb
    #redirect_to restaurant_path(@restaurant)
  end

  def edit
    @channel = Channel.find(params[:id])
  end

  def destroy
    @channel = Patient.find(params[:id])
    @channel.destroy
  end

  private

  def channel_params
    params.require(:channel).permit(:nom )
  end
end
