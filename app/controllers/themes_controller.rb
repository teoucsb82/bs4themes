class ThemesController < ApplicationController
  def index
    @themes = Theme.all
    @navbar_classes = 'navbar-light bg-faded'
  end

  def show
    return redirect_to themes_url unless Theme.all.include?(params[:id])
    @name = params[:id].downcase
    @navbar_classes = @name != 'default' ? 'navbar-dark bg-primary' : 'navbar-light bg-faded'
  end
end
