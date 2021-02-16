class SessionController < ApplicationController
    def new
        
    end
    def create
        @user = User.find_by(email: params[:email])
        if @user.present? && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Login successfully!..."
        else
            flash[:alert] = "Invalid User name or Password"
            render :new
            
        end
        
        
    end
    
    

    def destroy
        session[:user_id]=nil
        redirect_to root_path, notice: "Logout successfully"
    end

end