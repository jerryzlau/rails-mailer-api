require 'mailgun'

class ExampleMailer < ApplicationMailer
  default from: 'sandbox856dd05b536a41a6b9c3092bab20bfa4.mailgun.org'

  def send_email(package)
    package = package.to_h
    # mg_client = Mailgun::Client.new ENV['api_key']
    # message_params = {:from    => ENV['gmail_username'],
    #                   :to      => package[:email],
    #                   :subject => package[:subject],
    #                   :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
    # mg_client.send_message ENV['domain'], message_params
    mail to: package[:email], subject: package[:subject]
  end 
end
