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

  def show
    @mascot = Mascot.find(params[:id])
  end

  def edit
    @mascot = Mascot.find(params[:id])
  end

  def update
    @mascot = Mascot.find(params[:id])
    @mascot.update_attributes!(mascot_params)

    redirect_to mascots_path
  end

  def destroy
    @mascot = Mascot.find(params[:id]).delete

    redirect_to mascots_path
  end

  private
  def mascot_params
    params.require(:mascot).permit(:company, :company_mascot)
  end
end