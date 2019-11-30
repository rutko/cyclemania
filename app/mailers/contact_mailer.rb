# frozen_string_literal: true

# Send mail function page
class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail(
      from: 'system@example.com',
      to: 'manager@example.com',
      subject: 'お問い合わせ通知'
    )
  end
end
