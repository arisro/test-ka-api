class ApplicationController < ActionController::API
  before_filter :protect
  
  def protect
    @ips = ['127.0.0.1']
    if not @ips.include? request.remote_ip
      head :forbidden
      return
    end
  end
end