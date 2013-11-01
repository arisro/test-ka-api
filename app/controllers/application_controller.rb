class ApplicationController < ActionController::API
  before_filter :protect
  before_filter :allow_cors

  def allow_cors
	headers["Access-Control-Allow-Origin"] = "*"
	headers["Access-Control-Allow-Methods"] = %w{GET POST PUT PATCH DELETE}.join(",")
	headers["Access-Control-Allow-Headers"] = %w{Origin Accept Content-Type X-Requested-With X-CSRF-Token}.join(",")

	head(:ok) if request.request_method == "OPTIONS"
  end

  def protect
    @ips = ['127.0.0.1']
    if not @ips.include? request.remote_ip
      head :forbidden
      return
    end
  end
end