class ContactsController < ApplicationController
  def index
    @h = Contact.all
  end
  def show
    @id = params[:id]
    @contact = Contact.find_by(id: @id)
  end
  def new
  end
  def create
    coordinates = Geocoder.coordinates(params[:address])
    Contact.create(first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], biography: params[:biography], latitude: coordinates[0], longitude: coordinates[1])
    redirect_to "/contacts/"
  end
  def edit
    @id = params[:id]
    @contact = Contact.find_by(id: @id)
  end
  def update
    @id = params[:id]
    @contact = Contact.find_by(id: @id)
    coordinates = Geocoder.coordinates(params[:address])
    @contact.update(first_name: params[:first_name], middle_name: params[:middle_name],last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], biography: params[:biography], latitude: coordinates[0], longitude: coordinates[1])
    redirect_to "/contacts/#{@contact.id}"
  end
  def destroy
    @id = params[:id]
    @contact = Contact.find_by(id: @id)
    @contact.destroy
    redirect_to "/"
  end
end
