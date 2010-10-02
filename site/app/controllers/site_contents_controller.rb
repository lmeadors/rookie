class SiteContentsController < ApplicationController
  # GET /site_contents
  # GET /site_contents.xml
  def index
    @site_contents = SiteContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @site_contents }
    end
  end

  # GET /site_contents/1
  # GET /site_contents/1.xml
  def show
    @site_content = SiteContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @site_content }
    end
  end

  # GET /site_contents/new
  # GET /site_contents/new.xml
  def new
    @site_content = SiteContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @site_content }
    end
  end

  # GET /site_contents/1/edit
  def edit
    @site_content = SiteContent.find(params[:id])
  end

  # GET /site_contents/1/page
  def page
    @site_content = SiteContent.find(params[:id])
    logger.error '@site_content.parent_id = '
    logger.error @site_content.parent_id.as_json
    logger.error @site_content.parent_id < 1
    if @site_content.parent_id < 1
      redirect_to :controller => 'welcome', :action => 'index'
    else
      @child_content = SiteContent.find_all_by_parent_id(params[:id])
      @parent_content = SiteContent.find(@site_content.parent_id)
    end
  end

  # POST /site_contents
  # POST /site_contents.xml
  def create
    @site_content = SiteContent.new(params[:site_content])

    respond_to do |format|
      if @site_content.save
        format.html { redirect_to(@site_content, :notice => 'Site content was successfully created.') }
        format.xml  { render :xml => @site_content, :status => :created, :location => @site_content }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @site_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /site_contents/1
  # PUT /site_contents/1.xml
  def update
    @site_content = SiteContent.find(params[:id])

    respond_to do |format|
      if @site_content.update_attributes(params[:site_content])
        format.html { redirect_to(@site_content, :notice => 'Site content was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @site_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /site_contents/1
  # DELETE /site_contents/1.xml
  def destroy
    @site_content = SiteContent.find(params[:id])
    @site_content.destroy

    respond_to do |format|
      format.html { redirect_to(site_contents_url) }
      format.xml  { head :ok }
    end
  end
end
