class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_seo_globals

  private
  def set_seo_globals
    set_meta_tags site: 'Bootstrap 4 Themes', reverse: true, canonical: "http://www.bs4themes.com"
  end
end
