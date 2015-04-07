class ContactsController < ApplicationController

  def create
     @contact = Contact.create(contact_params)
    if @contact.save
      UserMailer.customer_info(@contact).deliver!
      flash[:notice] = "Successfully created plan"
    else
      flash[:error] = "Error while sending contacts, please try again"
    end
    redirect_to home_index_path
  end


  private

  # Never trust parameters from the scary internet, only allow the white list through.  , , :recurring
  def contact_params
    params.required(:contact).permit(:name, :email, :phone, :message)
  end
end


