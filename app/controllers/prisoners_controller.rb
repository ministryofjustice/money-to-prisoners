class PrisonersController < ApplicationController
  before_action :set_prisoner, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @prisoners = Prisoner.all
    respond_with(@prisoners)
  end

  def show
    respond_with(@prisoner)
  end

  def new
    @prisoner = Prisoner.new
    respond_with(@prisoner)
  end

  def edit
  end

  def create
    @prisoner = Prisoner.new(prisoner_params)
    @prisoner.save
    respond_with(@prisoner)
  end

  def update
    @prisoner.update(prisoner_params)
    respond_with(@prisoner)
  end

  def destroy
    @prisoner.destroy
    respond_with(@prisoner)
  end

  private
    def set_prisoner
      @prisoner = Prisoner.find(params[:id])
    end

    def prisoner_params
      params.require(:prisoner).permit(:prisoner_name, :prisoner_number, :prisoner_dob)
    end
end
