class BoiteASpheresController < ApplicationController
  skip_before_filter :authorize

  def spheres
    @spheres = Sphere.all
  end

  def show_sphere
    @sphere = Sphere.find(params[:sphere_id])
  end

end
