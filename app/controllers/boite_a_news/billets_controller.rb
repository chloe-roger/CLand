class BoiteANews::BilletsController < ApplicationController
  # GET /billets
  # GET /billets.xml
  def index
    @billets = BoiteANews::Billet.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @billets }
    end
  end

  # GET /billets/1
  # GET /billets/1.xml
  def show
    @billet = BoiteANews::Billet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @billet }
    end
  end

  # GET /billets/new
  # GET /billets/new.xml
  def new
    @billet = BoiteANews::Billet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @billet }
    end
  end

  # GET /billets/1/edit
  def edit
    @billet = BoiteANews::Billet.find(params[:id])
  end

  # POST /billets
  # POST /billets.xml
  def create
    @billet = BoiteANews::Billet.new(params[:boite_a_news_billet])

    respond_to do |format|
      if @billet.save
        format.html { redirect_to(@billet, :notice => 'Billet was successfully created.') }
        format.xml  { render :xml => @billet, :status => :created, :location => @billet }
      else
        format.html { render :action => "new" , :notice => 'Error for saving the billet'}
        format.xml  { render :xml => @billet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /billets/1
  # PUT /billets/1.xml
  def update
    @billet = Billet.find(params[:id])

    respond_to do |format|
      if @billet.update_attributes(params[:boite_a_news_billet])
        format.html { redirect_to(@billet, :notice => 'Billet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @billet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /billets/1
  # DELETE /billets/1.xml
  def destroy
    @billet = Billet.find(params[:id])
    @billet.destroy

    respond_to do |format|
      format.html { redirect_to(billets_url) }
      format.xml  { head :ok }
    end
  end
end
