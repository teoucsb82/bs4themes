class PagesController < ApplicationController
  def help
    @navbar_classes = "navbar-dark bg-inverse"
    set_meta_tags title: "Help", 
                  description: 'Quickstart instructions for downloading and installing custom Bootstrap 4 SASS themes.',
                  keywords: 'bootstrap, quickstart, help, sass, installation, themes, skin, rails, ruby, asset pipeline'
  end

  def privacy
    set_meta_tags title: "Privacy and Terms of Service", reverse: true
  end
end
