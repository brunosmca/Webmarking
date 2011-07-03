class WebmarksController < ApplicationController
  # GET /webmarks
  # GET /webmarks.xml
  def index
   
    # Just Helper + View
   
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @webmarks }
    end
  end
  
  def all_webmarks
    @webmark = Webmark.all
  end

  # GET /webmarks/1
  # GET /webmarks/1.xml
  def show
    @webmark = Webmark.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @webmark }
    end
  end

  # GET /webmarks/new
  # GET /webmarks/new.xml
  def new
    @webmark = Webmark.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @webmark }
    end
  end

  # GET /webmarks/1/edit
  def edit
    @webmark = Webmark.find(params[:id])
  end

  # POST /webmarks
  # POST /webmarks.xml
  def create
    @webmark = Webmark.new(params[:webmark])
    @webmark.user_id = current_user.id
    respond_to do |format|
      if @webmark.save
        format.html { redirect_to(@webmark, :notice => 'Webmark was successfully created.') }
        format.xml  { render :xml => @webmark, :status => :created, :location => @webmark }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @webmark.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /webmarks/1
  # PUT /webmarks/1.xml
  def update
    @webmark = Webmark.find(params[:id])

    respond_to do |format|
      if @webmark.update_attributes(params[:webmark])
        format.html { redirect_to(@webmark, :notice => 'Webmark was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @webmark.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /webmarks/1
  # DELETE /webmarks/1.xml
  def destroy
    @webmark = Webmark.find(params[:id])
    @webmark.destroy

    respond_to do |format|
      format.html { redirect_to(webmarks_url) }
      format.xml  { head :ok }
    end
  end
end
