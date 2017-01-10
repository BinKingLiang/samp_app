class StaticPagesController < ApplicationController

  def home
  end

  def help
  end

  def about
  	
  end

  def conntact
  	render :json => {
     :name=>"xiaoliang",
     :adress=>"上海市南翔镇",
     :sex=>"男"
    }
  end
end
