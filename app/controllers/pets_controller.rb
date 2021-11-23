class PetsController < ApplicationController
  # As an user I can see all pets

  def index
    @pets = Pet.all
  end

  # ""         I can see the details of a specific pet
  def show
    @pet = Pet.find(params[:id])
  end

  # ""         I can list a missing pet
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pets_path
    else
      render 'new'
    end
  end

  # ""         I can see update a missing pet
  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])

    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render 'edit'
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end


  private

  def pet_params
    params.require(:pet).permit(:name, :location, :lost_at, :color, :species)
  end

end






# ""         I can see destroy a missing pet
