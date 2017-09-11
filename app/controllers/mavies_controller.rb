class MaviesController < ApplicationController
  before_action :set_mavy, only: [:show, :edit, :update, :destroy]

  # GET /mavies
  # GET /mavies.json
  def index
    @mavies = Mavie.all
  end

  # GET /mavies/1
  # GET /mavies/1.json
  def show
  end

  # GET /mavies/new
  def new
    @mavy = Mavie.new
  end

  # GET /mavies/1/edit
  def edit
  end

  # POST /mavies
  # POST /mavies.json
  def create
    @mavy = Mavie.new(mavy_params)

    respond_to do |format|
      if @mavy.save
        format.html { redirect_to @mavy, notice: 'Mavie was successfully created.' }
        format.json { render :show, status: :created, location: @mavy }
      else
        format.html { render :new }
        format.json { render json: @mavy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mavies/1
  # PATCH/PUT /mavies/1.json
  def update
    respond_to do |format|
      if @mavy.update(mavy_params)
        format.html { redirect_to @mavy, notice: 'Mavie was successfully updated.' }
        format.json { render :show, status: :ok, location: @mavy }
      else
        format.html { render :edit }
        format.json { render json: @mavy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mavies/1
  # DELETE /mavies/1.json
  def destroy
    @mavy.destroy
    respond_to do |format|
      format.html { redirect_to mavies_url, notice: 'Mavie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mavy
      @mavy = Mavie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mavy_params
      params.require(:mavy).permit(:name, :released)
    end
end
