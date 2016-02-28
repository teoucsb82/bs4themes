class PagesController < ApplicationController
  def portfolio 
  end

  def resume 
  end

  def privacy
    set_meta_tags site: 'Bootstrap 4 Themes', title: "Privacy & Terms of Service", reverse: true
  end
end
