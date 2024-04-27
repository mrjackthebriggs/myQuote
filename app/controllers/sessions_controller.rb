class SessionsController < ApplicationController
     
    def new 
    end

    def create user = User.find_by(email: params[:email]) 
        if user && user.authenticate(params[:password]) && user.status == "Active" 
            session[:user_id] = user.id 
            session[:f_name] = user.f_name 
            session[:is_admin] = user.admin 
            if session[:is_admin]
                redirect_to admin_path, notice: "Logged in successfully!"
            else 
                redirect_to userhome_path, notice: "Logged in successfully!"
            end

        else 
            flash.now[:error] = "Invalid email or password. Please try again." 
            render 'new'
        end 
    end
    
    # This destroy method handles the logout process. It clears all set parameters from the session object, rendering it null, and then redirects user to the home page with an appropriate message.
    
    def destroy 
        session[:user_id] = nil 
        redirect_to root_path, notice: "Logged out successfully!"
    end
end
