class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  def create
    dose = Dose.new(dose_params)
    dose.save
    redirect_to doses_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

end
