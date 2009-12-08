class QualitiesController < ApplicationController
  # GET /qualities
  # GET /qualities.xml
  def index
    @qualities = Quality.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @qualities }
    end
  end

  # GET /qualities/1
  # GET /qualities/1.xml
  def show
    @quality = Quality.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quality }
    end
  end

  # GET /qualities/new
  # GET /qualities/new.xml
  def new
    @quality = Quality.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quality }
    end
  end

  # GET /qualities/1/edit
  def edit
    @quality = Quality.find(params[:id])
  end

  # POST /qualities
  # POST /qualities.xml
  def create
    @quality = Quality.new(params[:quality])

    respond_to do |format|
      if @quality.save
        flash[:notice] = 'Quality was successfully created.'
        format.html { redirect_to(@quality) }
        format.xml  { render :xml => @quality, :status => :created, :location => @quality }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /qualities/1
  # PUT /qualities/1.xml
  def update
    @quality = Quality.find(params[:id])

    respond_to do |format|
      if @quality.update_attributes(params[:quality])
        flash[:notice] = 'Quality was successfully updated.'
        format.html { redirect_to(@quality) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /qualities/1
  # DELETE /qualities/1.xml
  def destroy
    @quality = Quality.find(params[:id])
    @quality.destroy

    respond_to do |format|
      format.html { redirect_to(qualities_url) }
      format.xml  { head :ok }
    end
  end
end
