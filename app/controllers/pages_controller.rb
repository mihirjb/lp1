class PagesController < ApplicationController
  def home
    @signup = Signup.new
  end
end
