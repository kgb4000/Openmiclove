class PagesController < ApplicationController
  def home
  	@events = Event.order('created_at DESC').limit(6)
  end

  def contact
  end

  def about
  end
end
