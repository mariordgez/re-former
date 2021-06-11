class UsersController < ApplicationController
  def new
<<<<<<< HEAD
    @user = User.new 
  end
  def create
    @user = User.new(users_params)
=======
    @user = User.new
  end
  def create
    @user = User.new(users_params)
    #@user = User.new(username: params[:username], email: params[:email], password: params[:password])
>>>>>>> 1c65c6934af11e7e2bbaae4584cd8584fb4413e9
    if @user.save
      redirect_to new_user_path
    else
       render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(users_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private 

    def users_params
      params.require(:user).permit(:username, :email, :password)
    end
end
