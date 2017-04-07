class UsersController < ApplicationController
  def new
    #   render :text => "New method"
    #   @user = User.find(params[:id])
  end

  def index
    #   render :text => "Index method"
      @users = User.all()
    #   redirect_to 'index'
  end

  def create
      render :text => "Create method"
      User.create( user_params )
      redirect_to 'show/:id'
  end

  def show
    #   redirect_to 'users/:id'
    @user = User.find(params[:id])
  end

  def update
    # User.find(params[:id]).update(user_params)
    user = User.find(params[:id])
    user.name = params[:name]
    user.save
    redirect_to '/users/' + params[:id]
  end

  def delete
    User.find(params[:id]).delete()
    redirect_to '/'
  end


private
    def user_params
        params.require(:user).permit(:name, :age, :location)
    end
end
