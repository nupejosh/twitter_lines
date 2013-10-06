class StreamersController < ApplicationController
  # GET /streamers
  # GET /streamers.json
  def index
    @streamers = Streamer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @streamers }
    end
  end

  # GET /streamers/1
  # GET /streamers/1.json
  def show
    @streamer = Streamer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @streamer }
    end
  end

  # GET /streamers/new
  # GET /streamers/new.json
  def new
    @streamer = Streamer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @streamer }
    end
  end

  # GET /streamers/1/edit
  def edit
    @streamer = Streamer.find(params[:id])
  end

  # POST /streamers
  # POST /streamers.json
  def create
    @streamer = Streamer.new(params[:streamer])

    respond_to do |format|
      if @streamer.save
        format.html { redirect_to @streamer, notice: 'Streamer was successfully created.' }
        format.json { render json: @streamer, status: :created, location: @streamer }
      else
        format.html { render action: "new" }
        format.json { render json: @streamer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /streamers/1
  # PUT /streamers/1.json
  def update
    @streamer = Streamer.find(params[:id])

    respond_to do |format|
      if @streamer.update_attributes(params[:streamer])
        format.html { redirect_to @streamer, notice: 'Streamer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @streamer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /streamers/1
  # DELETE /streamers/1.json
  def destroy
    @streamer = Streamer.find(params[:id])
    @streamer.destroy

    respond_to do |format|
      format.html { redirect_to streamers_url }
      format.json { head :no_content }
    end
  end
end
