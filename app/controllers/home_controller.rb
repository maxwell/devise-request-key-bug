class HomeController < ApplicationController
  def index
    render :text => view_context.link_to('log in', new_user_session_path)
  end
end
