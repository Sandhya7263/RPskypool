class UserMailer < ActionMailer::Base
#  default from: "info@rpskypool.com"

  def customer_info(contact)
    @contact = contact
    mail(:from => "info@rpskypool.com", :to =>  "rpskypool@gmail.com", :subject => "#{@contact.name}"+"Customer Enquire")
  end
  
end
