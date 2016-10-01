class IdleTimesController < ApplicationController
  before_action :set_idle_time, only: [:show, :edit, :update, :destroy]

  # GET /idle_times
  # GET /idle_times.json
  def index
    @idle_times = IdleTime.all
  end

  # GET /idle_times/1
  # GET /idle_times/1.json
  def show
  end

  # GET /idle_times/new
  def new
    @idle_time = IdleTime.new
  end

  # GET /idle_times/1/edit
  def edit
  end

  # POST /idle_times
  # POST /idle_times.json
  def create
    @idle_time = IdleTime.new(idle_time_params)

    respond_to do |format|
      if @idle_time.save
        format.html { redirect_to @idle_time, notice: 'Idle time was successfully created.' }
        format.json { render :show, status: :created, location: @idle_time }
      else
        format.html { render :new }
        format.json { render json: @idle_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idle_times/1
  # PATCH/PUT /idle_times/1.json
  def update
    respond_to do |format|
      if @idle_time.update(idle_time_params)
        format.html { redirect_to @idle_time, notice: 'Idle time was successfully updated.' }
        format.json { render :show, status: :ok, location: @idle_time }
      else
        format.html { render :edit }
        format.json { render json: @idle_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idle_times/1
  # DELETE /idle_times/1.json
  def destroy
    @idle_time.destroy
    respond_to do |format|
      format.html { redirect_to idle_times_url, notice: 'Idle time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idle_time
      @idle_time = IdleTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idle_time_params
      params.require(:idle_time).permit(:day, :hour, :person_name, :idle_flag)
    end
end
