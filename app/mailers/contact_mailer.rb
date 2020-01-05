# frozen_string_literal: true

# Send mail function page
class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail to: ENV['MAIL'], subject: "メールのタイトル"
  end
end
