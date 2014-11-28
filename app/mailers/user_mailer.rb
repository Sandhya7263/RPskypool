class UserMailer < ActionMailer::Base
  default from: "info@rpskypool.com"

  def customer_info(contact)
    @contact = contact
    mail(to: "rpskypool@gmail.com",cc: "rpchowdary85@gmail.com", subject: 'Customer Details')
  end
  
end
