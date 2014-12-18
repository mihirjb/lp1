class PagesController < ApplicationController
  def home
    @signup = Signup.new
  end
  
  def thanks
  end
end
