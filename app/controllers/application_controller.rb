class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :prepare_for_mobile

  private

  def mobile_device?
    debugger
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
  helper_method :mobile_device?

  def prepare_for_mobile
    debugger
    session[:mobile_param] = params[:mobile] if params[:mobile]
  end
end
