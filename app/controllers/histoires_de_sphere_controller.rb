class HistoiresDeSphereController < ApplicationController
  skip_before_filter :authorize

  def index
    @sphere = Sphere.find(params[:sphere_id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sphere }
    end
  end

end
