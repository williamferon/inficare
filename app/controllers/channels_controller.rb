class ChannelsController < ApplicationController
  before_action :find_channel, only: [:show, :edit, :update, :destroy]
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
    @channel = Channel.new(channel_params)
    if @channel.save
      redirect_to @channel, notice: 'patient créé avec succes.'
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
    @channel = Channel.find(params[:id])
    @channel.destroy
    redirect_to channels_path, notice: 'Canal supprimé avec succès.'
  end

  private

  def channel_params
    params.require(:channel).permit(:nom, :channel_id)
  end

  def find_channel
    @channel = Channel.find(params[:id])
  end
end
