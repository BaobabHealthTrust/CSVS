class VoteIssuesController < ApplicationController
  # GET /vote_issues
  # GET /vote_issues.xml
  def index
    @vote_issues = VoteIssue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vote_issues }
    end
  end

  # GET /vote_issues/1
  # GET /vote_issues/1.xml
  def show
    @vote_issue = VoteIssue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vote_issue }
    end
  end

  # GET /vote_issues/new
  # GET /vote_issues/new.xml
  def new
    @vote_issue = VoteIssue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vote_issue }
    end
  end

  # GET /vote_issues/1/edit
  def edit
    @vote_issue = VoteIssue.find(params[:id])
  end

  # POST /vote_issues
  # POST /vote_issues.xml
  def create
    @vote_issue = VoteIssue.new(params[:vote_issue])

    respond_to do |format|
      if @vote_issue.save
        format.html { redirect_to(@vote_issue, :notice => 'Vote issue was successfully created.') }
        format.xml  { render :xml => @vote_issue, :status => :created, :location => @vote_issue }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vote_issue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vote_issues/1
  # PUT /vote_issues/1.xml
  def update
    @vote_issue = VoteIssue.find(params[:id])

    respond_to do |format|
      if @vote_issue.update_attributes(params[:vote_issue])
        format.html { redirect_to(@vote_issue, :notice => 'Vote issue was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vote_issue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_issues/1
  # DELETE /vote_issues/1.xml
  def destroy
    @vote_issue = VoteIssue.find(params[:id])
    @vote_issue.destroy

    respond_to do |format|
      format.html { redirect_to(vote_issues_url) }
      format.xml  { head :ok }
    end
  end
end
