class PagesController < ApplicationController
  before_filter :login_required
  def index
    puts "aaaaa";
  end
  
end
