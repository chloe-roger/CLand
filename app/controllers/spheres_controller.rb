class SpheresController < ApplicationController
  # GET /spheres
  # GET /spheres.xml
  def index
    @spheres = Sphere.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @spheres }
    end
  end

  # GET /spheres/1
  # GET /spheres/1.xml
  def show
    @sphere = Sphere.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sphere }
    end
  end

  # GET /spheres/new
  # GET /spheres/new.xml
  def new
    @sphere = Sphere.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sphere }
    end
  end

  # GET /spheres/1/edit
  def edit
    @sphere = Sphere.find(params[:id])
  end

  # POST /spheres
  # POST /spheres.xml
  def create
    @sphere = Sphere.new(params[:sphere])

    respond_to do |format|
      if @sphere.save
        format.html { redirect_to(@sphere, :notice => 'Sphere was successfully created.') }
        format.xml  { render :xml => @sphere, :status => :created, :location => @sphere }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sphere.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spheres/1
  # PUT /spheres/1.xml
  def update
    @sphere = Sphere.find(params[:id])

    respond_to do |format|
      if @sphere.update_attributes(params[:sphere])
        format.html { redirect_to(@sphere, :notice => 'Sphere was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sphere.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spheres/1
  # DELETE /spheres/1.xml
  def destroy
    @sphere = Sphere.find(params[:id])
    @sphere.destroy

    respond_to do |format|
      format.html { redirect_to(spheres_url) }
      format.xml  { head :ok }
    end
  end
end
