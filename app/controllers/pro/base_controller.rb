module Pro
	class BaseController < ApplicationController

		before_action :authenticate_userpro!

	end
end