class CobbdouglasController < ApplicationController

	before_filter :handle_mobile

	def handle_mobile
	  request.format = :mobile if mobile_user_agent?
	end


def home

	
end


end
