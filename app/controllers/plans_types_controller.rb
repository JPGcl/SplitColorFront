class PlansTypesController < ApplicationController
  before_action :set_plans_type, only: %i[ show edit update destroy ]

  # GET /plans_types or /plans_types.json
  def index
    @plans_types = PlansType.all
  end

  # GET /plans_types/1 or /plans_types/1.json
  def show
  end

  # GET /plans_types/new
  def new
    @plans_type = PlansType.new
  end

  # GET /plans_types/1/edit
  def edit
  end

  # POST /plans_types or /plans_types.json
  def create
    @plans_type = PlansType.new(plans_type_params)

    respond_to do |format|
      if @plans_type.save
        format.html { redirect_to plans_type_url(@plans_type), notice: "Plans type was successfully created." }
        format.json { render :show, status: :created, location: @plans_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plans_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plans_types/1 or /plans_types/1.json
  def update
    respond_to do |format|
      if @plans_type.update(plans_type_params)
        format.html { redirect_to plans_type_url(@plans_type), notice: "Plans type was successfully updated." }
        format.json { render :show, status: :ok, location: @plans_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plans_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plans_types/1 or /plans_types/1.json
  def destroy
    @plans_type.destroy

    respond_to do |format|
      format.html { redirect_to plans_types_url, notice: "Plans type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plans_type
      @plans_type = PlansType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plans_type_params
      params.require(:plans_type).permit(:plan_description)
    end
end
