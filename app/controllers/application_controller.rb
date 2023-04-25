class ApplicationController < ActionController::Base
  def home
    @home = Home.first
  end

  def about
    @about = About.first
  end

  def portfolio
    @portfolio = Portfolio.first
  end

  def contact
    @contact = Contact.first
  end
end
