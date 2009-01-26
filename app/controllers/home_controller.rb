class HomeController < ApplicationController

  def index
    page = ComatosePage.find_by_path("introduction")
    render :text => page.to_html, :layout => true
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
      render :text => "write it up!"
#    end
  end


  def comments_and_forum
#    page = ComatosePage.find_by_path("comments-and-forum")
#    unless page.nil?
#      render :text => page.to_html, :layout => true
#    else
      render :text => "leave a comment, yo", :layout => true
#    end
  end


end


