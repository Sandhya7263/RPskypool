class UserMailer < ActionMailer::Base
#  default from: "info@rpskypool.com"

  def customer_info(contact)
    @contact = contact
    mail(:from => "info@rpskypool.com", :to =>  "dsanju5652@gmail.com", :subject => "Customer Enquire")
  end
  
end
