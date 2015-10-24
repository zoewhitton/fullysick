class EnquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.response.subject
  #
  def response(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail(to: @enquiry.email, subject: "Your enquiry has been received")
  end

  def received(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail(to: 'zoe.whitton@gmail.com', subject: "Your enquiry has been received")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.received.subject
  #

end
