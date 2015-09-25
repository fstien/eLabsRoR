class GeneralController < ApplicationController


respond_to do |format|
  format.html { }   # Regular stuff
  format.mobile { } # other stuff
end

before_filter :handle_mobile

def handle_mobile
  request.format = :mobile if mobile_user_agent?
end



def home 
	@title = "Home"
end


end
