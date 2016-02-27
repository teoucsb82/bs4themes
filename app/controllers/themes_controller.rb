class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def show
    return redirect_to themes_url unless Theme.all.include?(params[:id])
    @name = params[:id]
  end
end
