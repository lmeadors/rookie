class SiteAttributesController < ApplicationController

  before_filter :authenticate_admin!

  # GET /site_attributes
  # GET /site_attributes.xml
  def index
    @site_attributes = SiteAttribute.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @site_attributes }
    end
  end

  # GET /site_attributes/1
  # GET /site_attributes/1.xml
  def show
    @site_attribute = SiteAttribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @site_attribute }
    end
  end

  # GET /site_attributes/new
  # GET /site_attributes/new.xml
  def new
    @site_attribute = SiteAttribute.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @site_attribute }
    end
  end

  # GET /site_attributes/1/edit
  def edit
    @site_attribute = SiteAttribute.find(params[:id])
  end

  # POST /site_attributes
  # POST /site_attributes.xml
  def create
    @site_attribute = SiteAttribute.new(params[:site_attribute])

    respond_to do |format|
      if @site_attribute.save
        format.html { redirect_to(@site_attribute, :notice => 'Site attribute was successfully created.') }
        format.xml  { render :xml => @site_attribute, :status => :created, :location => @site_attribute }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @site_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /site_attributes/1
  # PUT /site_attributes/1.xml
  def update
    @site_attribute = SiteAttribute.find(params[:id])

    respond_to do |format|
      if @site_attribute.update_attributes(params[:site_attribute])
        format.html { redirect_to(@site_attribute, :notice => 'Site attribute was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @site_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /site_attributes/1
  # DELETE /site_attributes/1.xml
  def destroy
    @site_attribute = SiteAttribute.find(params[:id])
    @site_attribute.destroy

    respond_to do |format|
      format.html { redirect_to(site_attributes_url) }
      format.xml  { head :ok }
    end
  end
end
