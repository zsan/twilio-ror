require 'twilio-ruby'

class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token

  def voice
    response = Twilio::TwiML::VoiceResponse.new do |r|
      r.say "Yay! You're on Rails!", voice: "alice"
      # r.sms "Well done building your first Twilio on Rails 5 app!"
      # r.play "http://linode.rabasa.com/cantina.mp3"
    end
    render :xml => response.to_xml
  end
end
