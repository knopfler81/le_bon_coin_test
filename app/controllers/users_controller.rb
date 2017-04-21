class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:first_name,
      :last_name,
      :nickname,
      :region,
      :departement,
      :address,
      :zipcode,
      :city,
      :phone,
      :birthdate,
      :password,
      :password_confirmtaion,
      :current_password)
  end

end
