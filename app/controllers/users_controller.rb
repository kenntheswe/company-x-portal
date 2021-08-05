class UsersController < ApplicationController

  def index
    @users = User.all.except(current_user)
  end

end
