class HistoiresController < ApplicationController
  # GET /histoires
  # GET /histoires.xml
  def index
    @histoires = Histoire.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @histoires }
    end
  end

  # GET /histoires/1
  # GET /histoires/1.xml
  def show
    @histoire = Histoire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @histoire }
    end
  end

  # GET /histoires/new
  # GET /histoires/new.xml
  def new
    @histoire = Histoire.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @histoire }
    end
  end

  # GET /histoires/1/edit
  def edit
    @histoire = Histoire.find(params[:id])
  end

  # POST /histoires
  # POST /histoires.xml
  def create
    @histoire = Histoire.new(params[:histoire])

    respond_to do |format|
      if @histoire.save
        format.html { redirect_to(@histoire, :notice => 'Histoire was successfully created.') }
        format.xml  { render :xml => @histoire, :status => :created, :location => @histoire }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @histoire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /histoires/1
  # PUT /histoires/1.xml
  def update
    @histoire = Histoire.find(params[:id])

    respond_to do |format|
      if @histoire.update_attributes(params[:histoire])
        format.html { redirect_to(@histoire, :notice => 'Histoire was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @histoire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /histoires/1
  # DELETE /histoires/1.xml
  def destroy
    @histoire = Histoire.find(params[:id])
    @histoire.destroy

    respond_to do |format|
      format.html { redirect_to(histoires_url) }
      format.xml  { head :ok }
    end
  end
end
