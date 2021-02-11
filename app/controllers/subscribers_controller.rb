class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      cookies[:saved_lead] = true
      redirect_to root_path, notice: "Vielen Dank!"
    else
      redirect_to root_path, notice: "Das hat leider nicht funktioniert."
    end
  end

  private

    def subscriber_params
      params.require(:subscriber).permit(:email)
    end
end
