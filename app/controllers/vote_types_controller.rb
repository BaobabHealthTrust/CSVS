class VoteTypesController < ApplicationController
  # GET /vote_types
  # GET /vote_types.xml
  def index
    @vote_types = VoteType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vote_types }
    end
  end

  # GET /vote_types/1
  # GET /vote_types/1.xml
  def show
    @vote_type = VoteType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vote_type }
    end
  end

  # GET /vote_types/new
  # GET /vote_types/new.xml
  def new
    @vote_type = VoteType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vote_type }
    end
  end

  # GET /vote_types/1/edit
  def edit
    @vote_type = VoteType.find(params[:id])
  end

  # POST /vote_types
  # POST /vote_types.xml
  def create
    @vote_type = VoteType.new(params[:vote_type])

    respond_to do |format|
      if @vote_type.save
        format.html { redirect_to(@vote_type, :notice => 'Vote type was successfully created.') }
        format.xml  { render :xml => @vote_type, :status => :created, :location => @vote_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vote_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vote_types/1
  # PUT /vote_types/1.xml
  def update
    @vote_type = VoteType.find(params[:id])

    respond_to do |format|
      if @vote_type.update_attributes(params[:vote_type])
        format.html { redirect_to(@vote_type, :notice => 'Vote type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vote_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_types/1
  # DELETE /vote_types/1.xml
  def destroy
    @vote_type = VoteType.find(params[:id])
    @vote_type.destroy

    respond_to do |format|
      format.html { redirect_to(vote_types_url) }
      format.xml  { head :ok }
    end
  end
end
