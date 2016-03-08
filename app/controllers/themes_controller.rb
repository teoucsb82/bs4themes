class ThemesController < ApplicationController

  def index
    @themes = Theme.all
    @navbar_classes = 'navbar-light bg-faded'
    set_meta_tags title: "Responsive Skins and Templates", 
                  description: "Customized Bootstrap 4 themes. Fully responsive with multiple navbars styles, showcasing the latest framework upgrades including cards and button outlines.",
                  keywords: 'bootstrap 4 themes, free bootstrap themes, bootstrap skins'
  end

  def show
    return redirect_to themes_url unless Theme.all.include?(params[:id])
    @name = params[:id].downcase
    @navbar_classes = I18n.t("themes.#{@name}.navbar_classes")
    set_meta_tags title: @name.capitalize, 
                  description: I18n.t("themes.#{@name}.seo_description"),
                  keywords: I18n.t("themes.#{@name}.seo_keywords")
  end

  def preview_blog
    return redirect_to themes_url unless Theme.all.include?(params[:id])
    @name = params[:id].downcase
    @navbar_classes = @name != 'default' ? 'navbar-dark bg-primary' : 'navbar-light bg-faded'
    set_meta_tags title: @name.capitalize + " Blog Preview", 
                  description: "Basic blog page built with Bootstrap 4 and the #{@name} theme",
                  keywords: I18n.t("themes.#{@name}.seo_keywords")
    render :sample_blog_page
  end

  def preview_carousel
    return redirect_to themes_url unless Theme.all.include?(params[:id])
    @name = params[:id].downcase
    @navbar_classes = @name != 'default' ? 'navbar-dark bg-primary' : 'navbar-light bg-faded'
    set_meta_tags title: @name.capitalize + " Carousel Preview", 
                  description: "Basic carousel page built with Bootstrap 4 and the #{@name} theme",
                  keywords: I18n.t("themes.#{@name}.seo_keywords")
    render :sample_carousel_page
  end

  def preview_landing
    return redirect_to themes_url unless Theme.all.include?(params[:id])
    @name = params[:id].downcase
    @navbar_classes = @name != 'default' ? 'navbar-dark bg-primary' : 'navbar-light bg-faded'
    set_meta_tags title: @name.capitalize + " Landing Preview", 
                  description: "Basic landing page built with Bootstrap 4 and the #{@name} theme",
                  keywords: I18n.t("themes.#{@name}.seo_keywords")
    render :sample_landing_page
  end

end
