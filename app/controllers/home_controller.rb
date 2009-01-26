class HomeController < ApplicationController

  def index
#    render :text =>  "ddddhey peter" 
 
 page = ComatosePage.find_by_path("introduction")
 render :text => page.to_html, :layout => false
  end

end


