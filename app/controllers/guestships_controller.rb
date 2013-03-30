class GuestshipsController < ApplicationController
  # GET /guestships
  # GET /guestships.json
  def index
    @guestships = Guestship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @guestships }
    end
  end

  # GET /guestships/1
  # GET /guestships/1.json
  def show
    @guestship = Guestship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @guestship }
    end
  end

  # GET /guestships/new
  # GET /guestships/new.json
  def new
    @guestship = Guestship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @guestship }
    end
  end

  # GET /guestships/1/edit
  def edit
    @guestship = Guestship.find(params[:id])
  end

  # POST /guestships
  # POST /guestships.json
  def create
    @guestship = Guestship.new(params[:guestship])
    @episode = Episode.find(@guestship.episode_id)

    respond_to do |format|
      if @guestship.save
        format.html { redirect_to episode_url(@episode.id), notice: 'Guestship was successfully created.' }
        format.json { render json: @guestship, status: :created, location: @guestship }
      else
        format.html { render action: "new" }
        format.json { render json: @guestship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /guestships/1
  # PUT /guestships/1.json
  def update
    @guestship = Guestship.find(params[:id])

    respond_to do |format|
      if @guestship.update_attributes(params[:guestship])
        format.html { redirect_to @guestship, notice: 'Guestship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @guestship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guestships/1
  # DELETE /guestships/1.json
  def destroy
    @guestship = Guestship.find(params[:id])
    @guestship.destroy
    @episode = Episode.find(@guestship.episode_id)

    respond_to do |format|
      format.html { redirect_to episode_url(@episode.id), notice: "Guestship successfully removed." }
      format.json { head :no_content }
    end
  end
end
