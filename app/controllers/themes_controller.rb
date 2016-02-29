class ThemesController < ApplicationController

  def index
    @themes = Theme.all
    @navbar_classes = 'navbar-light bg-faded'
    set_meta_tags site: 'Bootstrap 4 Themes', 
                  title: "Responsive Skins and Templates", 
                  reverse: true,
                  description: "Customized Bootstrap 4 themes. Fully responsive with multiple navbars styles, showcasing the latest framework upgrades including cards and button outlines.",
                  keywords: 'bootstrap, themes, responsive, skins, templates, css, style, sass, scss'
  end

  def show
    return redirect_to themes_url unless Theme.all.include?(params[:id])
    @name = params[:id].downcase
    @navbar_classes = @name != 'default' ? 'navbar-dark bg-primary' : 'navbar-light bg-faded'
    set_meta_tags site: 'Bootstrap 4 Themes', 
                  title: @name.capitalize, 
                  reverse: true,
                  description: I18n.t("themes.#{@name}.seo_description"),
                  keywords: I18n.t("themes.#{@name}.seo_keywords")
  end
end
