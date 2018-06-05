class UsersController < ApplicationController
  def create
    @user = User.new(
                      email: params[:email],
                      password: params[:password],
                      password_confirmation: params[:password_confirmation]
                    )

  end
end
