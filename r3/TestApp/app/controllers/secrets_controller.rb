class SecretsController < ApplicationController
    def index
        @secrets = Secret.all
    end

    def new
        @secret = Secret.new
    end

    def create
        @secret = Secret.new(secret_params)

    respond_to do |format|
        if @secret.save
            format.html { redirect_to @secret, notice: 'secret was successfully created.' }
            format.json { render :show, status: :created, location: @secret }
        else
            format.html { render :new }
            format.json { render json: @secret.errors, status: :unprocessable_entity }
        end
    end
end

    private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
