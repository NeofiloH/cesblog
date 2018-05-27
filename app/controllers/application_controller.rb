class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :dispositivo
end

private

def dispositivo
	case request.user_agent
		when /iPad/i
			request.variant = :tablet
		when /iPhone/i
			request.variant = :phone
		when /Android/i
			request.variant = :tablet
		when /iPad/i && /mobile/i
			request.variant = :phone
		when /Windows Phone/i
			request.variant = :phone
		else
			request.variant = :desktop
	end
end