class HomeController < ApplicationController
  layout "application", only: [:welcome]
  layout "layoutvideo", only: [:landing,:macroMenu, :menu, :videoAppsco]


  skip_before_action :authenticate_user!, :only => [:landing, :videoAppsco]
  def landing
  end

  def videoAppsco
  end

  def welcome
  end

  def macroMenu
  end

  def menu
  end
end
