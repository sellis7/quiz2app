class UserCostumesController < ApplicationController
  def index
    @user_costume = UserCostume.new
  end

  def new
  end

  def create
    @user_costume = UserCostume.create(costume_params)
    redirect_to user_costume_path(@user_costume)
  end

  def show
    @user_costume = UserCostume.last
  end

  private

	def costume_params
		params.require(:user_costume).permit(:costume, :year)
	end

end
