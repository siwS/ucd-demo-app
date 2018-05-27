class UsersController < ApplicationController
  before_action :set_user_and_address, only: [:show]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_and_address
      @user = User.find(params[:id])
      @address = UserAddress.where(user: @user)[0]
    end
end
