class Api::MessagesController < ApplicationController
  def index
    @greeting = Message.order('RANDOM()').limit(1).first
    if @greeting
      render json: @greeting
    else
      render json: { error: 'No greeting found' }, status: 404
    end
  end
end
