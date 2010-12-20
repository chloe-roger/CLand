class PersonnagesController < ApplicationController
  # GET /personnages
  # GET /personnages.xml
  def index
    @personnages = Personnage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @personnages }
    end
  end

  # GET /personnages/1
  # GET /personnages/1.xml
  def show
    @personnage = Personnage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @personnage }
    end
  end

  # GET /personnages/new
  # GET /personnages/new.xml
  def new
    @personnage = Personnage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @personnage }
    end
  end

  # GET /personnages/1/edit
  def edit
    @personnage = Personnage.find(params[:id])
  end

  # POST /personnages
  # POST /personnages.xml
  def create
    @personnage = Personnage.new(params[:personnage])

    respond_to do |format|
      if @personnage.save
        format.html { redirect_to(@personnage, :notice => 'Personnage was successfully created.') }
        format.xml  { render :xml => @personnage, :status => :created, :location => @personnage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @personnage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /personnages/1
  # PUT /personnages/1.xml
  def update
    @personnage = Personnage.find(params[:id])

    respond_to do |format|
      if @personnage.update_attributes(params[:personnage])
        format.html { redirect_to(@personnage, :notice => 'Personnage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @personnage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /personnages/1
  # DELETE /personnages/1.xml
  def destroy
    @personnage = Personnage.find(params[:id])
    @personnage.destroy

    respond_to do |format|
      format.html { redirect_to(personnages_url) }
      format.xml  { head :ok }
    end
  end
end
