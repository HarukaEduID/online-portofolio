class HomeController < ApplicationController
  def index
    @profile = Profile.first
    @experiences = Experience.all
    @portfolios = Portfolio.all
  end
end
