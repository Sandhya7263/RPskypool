class UserMailer < ActionMailer::Base
  default from: "info@rpskypool.com"

  def customer_info(contact)
    @contact = contact
    mail(to: "dsanju5652@gmail.com",cc: "rpchowdary85@gmail.com", subject: 'Customer Enquire')
  end
  
end
