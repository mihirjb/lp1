class SignupsController < ApplicationController
  
  before_filter :authenticate_admin!, :only => :index
  
  def index
    @signups = Signup.all
  end

  def new
    @signup = Signup.new
  end
  
  def create
     @signup = Signup.create(signup_params)
       if @signup.save 
         redirect_to root_url, :notice => "Signed up successfully. Thanks for your email, we will let you know when we are ready!"
          # redirect_to new_vendor_session_path, :notice => "Signed up successfully, now you may login."
       else
         render action: 'new' , :notice => "Sign up failed"
       end
  end
  
    private 
    def signup_params
     params.require(:signup).permit(:fullname, :email)
    end
end
