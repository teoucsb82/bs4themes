class ThemesController < ApplicationController

  def index
    @themes = Theme.all
    @navbar_classes = 'navbar-dark bg-inverse'
    set_meta_tags title: "Responsive Skins and Templates", 
                  description: "Customized Bootstrap 4 themes. Fully responsive with multiple navbars styles, showcasing the latest framework upgrades including cards and button outlines.",
                  keywords: 'bootstrap, themes, responsive, skins, templates, css, style, sass, scss'
  end

  def show
    return redirect_to themes_url unless Theme.all.include?(params[:id])
    @name = params[:id].downcase
    @navbar_classes = @name != 'default' ? 'navbar-dark bg-primary' : 'navbar-light bg-faded'
    set_meta_tags title: @name.capitalize, 
                  description: I18n.t("themes.#{@name}.seo_description"),
                  keywords: I18n.t("themes.#{@name}.seo_keywords")
  end
end
