class HomeController < ApplicationController

  def index    
      render :action => "home", :layout => true
  end

  def introduction    
      render :action => "introduction", :layout => true
  end

  def police_reports
#    page = ComatosePage.find_by_path("police-reports")
#    unless page.nil?
#      render :text => page.to_html, :layout => true
#    else
      render :action => "police_reports", :layout => true
#    end
  end


  def write_legislator
#    page = ComatosePage.find_by_path("write-your-legislator")
#    unless page.nil?
#      render :text => page.to_html, :layout => true
#    else
    render :action => "write_legislator", :layout => true
#    end
  end


  def comments_and_forum
#    page = ComatosePage.find_by_path("comments-and-forum")
#    unless page.nil?
#      render :text => page.to_html, :layout => true
#    else
  render :action => "comments_and_forum", :layout => true
#    end
  end


end


