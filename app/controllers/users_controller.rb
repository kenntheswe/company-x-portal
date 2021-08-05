class UsersController < ApplicationController
  before_action :authenticate_user!

  # show all users except current user
  def index
    @users = User.where.not(id: current_user.id)
  end

end
