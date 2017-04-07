class UsersController < ApplicationController
  def index
  end

  def new
      render :text => "Came to NEW method"
      @user = User.new()
  end

  def create
      render :text => "Came to CREATE method"
      User.create(name: params[:name])
      redirect_to "/users/show"
  end

  def update
      render :text => "Came to UPDATE method"
      @user = User.find(params[:id])
      render :text => @user.inspect
  end

  def show
      render :text => "Came to SHOW method"
      @user = User.find(params[:id])
  end

  def destroy
      render :text => "Came to DESTROY method"
  end

    def new
    #     render :text => "Came to NEW method"
    #     if signed_in?
    #         redirect_to "/users/profile"
    #     end
    # end
end




# if registration_successful
#     redirect_to "Page with users data"
# else
#     render "Page with errors"
# end
