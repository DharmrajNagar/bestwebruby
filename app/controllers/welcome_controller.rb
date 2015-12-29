class WelcomeController < ApplicationController
  def index
     @greeting = "Hello Every One!"
     
     @descrition = "Welcome to the Best Webtech ROR Development Wings."
  end
  
  def add
   @a, @b, @N = 30, 20
      
     @N = @a+@b
      
  end
  
  
end
