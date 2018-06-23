class HomeController < ApplicationController
  layout "application", only: [:welcome]
  layout "layoutvideo", only: [:landing,:macroMenu, :menu]


  skip_before_action :authenticate_user!, :only => [:landing]
  def landing
  end

  def welcome
  end

  def macroMenu
  end

  def menu
  end
end
