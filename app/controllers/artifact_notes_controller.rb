class ArtifactNotesController < ApplicationController
  # GET /artifact_notes
  # GET /artifact_notes.xml
  def index
    @artifact_notes = ArtifactNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @artifact_notes }
    end
  end

  # GET /artifact_notes/1
  # GET /artifact_notes/1.xml
  def show
    @artifact_note = ArtifactNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @artifact_note }
    end
  end

  # GET /artifact_notes/new
  # GET /artifact_notes/new.xml
  def new
    @artifact_note = ArtifactNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @artifact_note }
    end
  end

  # GET /artifact_notes/1/edit
  def edit
    @artifact_note = ArtifactNote.find(params[:id])
  end

  # POST /artifact_notes
  # POST /artifact_notes.xml
  def create
    @artifact_note = ArtifactNote.new(params[:artifact_note])

    respond_to do |format|
      if @artifact_note.save
        format.html { redirect_to(@artifact_note, :notice => 'ArtifactNote was successfully created.') }
        format.xml  { render :xml => @artifact_note, :status => :created, :location => @artifact_note }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @artifact_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /artifact_notes/1
  # PUT /artifact_notes/1.xml
  def update
    @artifact_note = ArtifactNote.find(params[:id])

    respond_to do |format|
      if @artifact_note.update_attributes(params[:artifact_note])
        format.html { redirect_to(@artifact_note, :notice => 'ArtifactNote was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @artifact_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /artifact_notes/1
  # DELETE /artifact_notes/1.xml
  def destroy
    @artifact_note = ArtifactNote.find(params[:id])
    @artifact_note.destroy

    respond_to do |format|
      format.html { redirect_to(artifact_notes_url) }
      format.xml  { head :ok }
    end
  end
end
