class TempsController < ApplicationController
  # GET /temps
  # GET /temps.json
  def index
    @temps = Temp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @temps }
    end
  end

  # GET /temps/1
  # GET /temps/1.json
  def show
    @temp = Temp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @temp }
    end
  end

  # GET /temps/new
  # GET /temps/new.json
  def new
    @temp = Temp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @temp }
    end
  end

  # GET /temps/1/edit
  def edit
    @temp = Temp.find(params[:id])
  end

  # POST /temps
  # POST /temps.json
  def create
    @temp = Temp.new(params[:temp])

    respond_to do |format|
      if @temp.save
        format.html { redirect_to @temp, notice: 'Temp was successfully created.' }
        format.json { render json: @temp, status: :created, location: @temp }
      else
        format.html { render action: "new" }
        format.json { render json: @temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /temps/1
  # PUT /temps/1.json
  def update
    @temp = Temp.find(params[:id])

    respond_to do |format|
      if @temp.update_attributes(params[:temp])
        format.html { redirect_to @temp, notice: 'Temp was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temps/1
  # DELETE /temps/1.json
  def destroy
    @temp = Temp.find(params[:id])
    @temp.destroy

    respond_to do |format|
      format.html { redirect_to temps_url }
      format.json { head :ok }
    end
  end
end
