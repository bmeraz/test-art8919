class MediaAttributesController < ApplicationController
  # GET /media_attributes
  # GET /media_attributes.xml
  def index
    @media_attributes = MediaAttribute.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @media_attributes }
    end
  end

  # GET /media_attributes/1
  # GET /media_attributes/1.xml
  def show
    @media_attribute = MediaAttribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @media_attribute }
    end
  end

  # GET /media_attributes/new
  # GET /media_attributes/new.xml
  def new
    @media_attribute = MediaAttribute.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @media_attribute }
    end
  end

  # GET /media_attributes/1/edit
  def edit
    @media_attribute = MediaAttribute.find(params[:id])
  end

  # POST /media_attributes
  # POST /media_attributes.xml
  def create
    @media_attribute = MediaAttribute.new(params[:media_attribute])

    respond_to do |format|
      if @media_attribute.save
        format.html { redirect_to(@media_attribute, :notice => 'MediaAttribute was successfully created.') }
        format.xml  { render :xml => @media_attribute, :status => :created, :location => @media_attribute }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @media_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /media_attributes/1
  # PUT /media_attributes/1.xml
  def update
    @media_attribute = MediaAttribute.find(params[:id])

    respond_to do |format|
      if @media_attribute.update_attributes(params[:media_attribute])
        format.html { redirect_to(@media_attribute, :notice => 'MediaAttribute was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @media_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /media_attributes/1
  # DELETE /media_attributes/1.xml
  def destroy
    @media_attribute = MediaAttribute.find(params[:id])
    @media_attribute.destroy

    respond_to do |format|
      format.html { redirect_to(media_attributes_url) }
      format.xml  { head :ok }
    end
  end
end
