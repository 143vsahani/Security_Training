class UsersController < ApplicationController
  after_action:testApp
    def index
        @users = User.all
      
    end
    #new_user
    def new
        @user =User.new
      
    end
    def show
        @user = User.find(params[:id])
    end
    def create
        @user = User.new(user_params)
    
        if @user.save
          redirect_to @user, notice: 'User was successfully created.'
        else
          render 'new',status: :unprocessable_entity
        end
    end
    #update
    def edit
        @user = User.find(params[:id])
    end
    
    def update
      @user = User.find(params[:id])
    
      if @user.update(user_params)
          redirect_to @user, notice: 'User was successfully updated.'
      else
          render 'edit',status: :unprocessable_entity
      end
    end
      #delete
      def destroy
        @user = User.find(params[:id])
        @user.destroy
    
        redirect_to users_path, notice: 'User was successfully deleted.'
      end
    
    private
    def testApp
      puts "hello i'm controller callback"
    end
    
    def user_params
        params.require(:user).permit(:name, :email)
    end
end
