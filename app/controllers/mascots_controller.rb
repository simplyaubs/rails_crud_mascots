class MascotsController < ApplicationController

  def index
    @mascot = Mascot.new
    @mascots = Mascot.all
  end

  def create
    @mascot = Mascot.new(mascot_params)
    if @mascot.save

      redirect_to mascots_path
    else
      render :index
    end
  end

  private
  def mascot_params
    params.require(:mascot).permit(:company, :company_mascot)
  end
end