class HostshipsController < ApplicationController
  # GET /hostships
  # GET /hostships.json
  def index
    @hostships = Hostship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hostships }
    end
  end

  # GET /hostships/1
  # GET /hostships/1.json
  def show
    @hostship = Hostship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hostship }
    end
  end

  # GET /hostships/new
  # GET /hostships/new.json
  def new
    @hostship = Hostship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hostship }
    end
  end

  # GET /hostships/1/edit
  def edit
    @hostship = Hostship.find(params[:id])
  end

  # POST /hostships
  # POST /hostships.json
  def create
    @hostship = Hostship.new(params[:hostship])

    respond_to do |format|
      if @hostship.save
        format.html { redirect_to @hostship, notice: 'Hostship was successfully created.' }
        format.json { render json: @hostship, status: :created, location: @hostship }
      else
        format.html { render action: "new" }
        format.json { render json: @hostship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hostships/1
  # PUT /hostships/1.json
  def update
    @hostship = Hostship.find(params[:id])

    respond_to do |format|
      if @hostship.update_attributes(params[:hostship])
        format.html { redirect_to @hostship, notice: 'Hostship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hostship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostships/1
  # DELETE /hostships/1.json
  def destroy
    @hostship = Hostship.find(params[:id])
    @hostship.destroy

    respond_to do |format|
      format.html { redirect_to hostships_url }
      format.json { head :no_content }
    end
  end
end
