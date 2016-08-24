class SecretsController < ApplicationController

def show
  
  case
  when current_user
  else
    redirect_to '/sessions/new'
  end

end


end
