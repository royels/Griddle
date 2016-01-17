class Api::TwilioController < ApplicationController
  def index
    tosend = params[:text]
    @client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
    @client.messages.create(
        from: '+14085604762',
        to: '+16692941085',
        body: tosend
    )
  end

end