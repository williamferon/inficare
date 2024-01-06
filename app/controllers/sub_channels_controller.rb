class SubChannelsController < ApplicationController
    before_action :set_channel
    def index
      @channel = Channel.find(params[:channel_id])
      @sub_channels = @channel.sub_channels
    end

    def create
      @channel = Channel.find(params[:channel_id])
      @sub_channel = @channel.sub_channels.build(sub_channel_params)

      if @sub_channel.save
        redirect_to channels_path, notice: 'Sous-canal créé avec succès.'
      else
        render 'new'
      end
    end

    def new
      @channel = Channel.find(params[:channel_id])
      @sub_channel = @channel.sub_channels.build
    end


    def edit
    @channel = Channel.find(params[:channel_id])
    @sub_channel = @channel.sub_channels.find(params[:id])
    end

    def update
      @channel = Channel.find(params[:channel_id])
      @sub_channel = @channel.sub_channels.find(params[:id])

      if @sub_channel.update(sub_channel_params)
        redirect_to channel_sub_channel_path(@channel, @sub_channel), notice: 'Sous-canal mis à jour avec succès.'
      else
        render 'edit'
      end
    end

    def destroy
      @channel = Channel.find(params[:channel_id])
      @sub_channel = @channel.sub_channels.find(params[:id])
      @sub_channel.destroy
      redirect_to channel_sub_channels_path(@channel), notice: 'Sous-canal supprimé avec succès.'
    end

    private

    def sub_channel_params
      params.require(:sub_channel).permit(:nom)
    end

    def set_channel
      @channel = Channel.find(params[:channel_id])
    end

end
