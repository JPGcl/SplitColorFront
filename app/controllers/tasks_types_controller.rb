class TasksTypesController < ApplicationController
  before_action :set_tasks_type, only: %i[ show edit update destroy ]

  # GET /tasks_types or /tasks_types.json
  def index
    @tasks_types = TasksType.all
  end

  # GET /tasks_types/1 or /tasks_types/1.json
  def show
  end

  # GET /tasks_types/new
  def new
    @tasks_type = TasksType.new
  end

  # GET /tasks_types/1/edit
  def edit
  end

  # POST /tasks_types or /tasks_types.json
  def create
    @tasks_type = TasksType.new(tasks_type_params)

    respond_to do |format|
      if @tasks_type.save
        format.html { redirect_to tasks_type_url(@tasks_type), notice: "Tasks type was successfully created." }
        format.json { render :show, status: :created, location: @tasks_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tasks_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks_types/1 or /tasks_types/1.json
  def update
    respond_to do |format|
      if @tasks_type.update(tasks_type_params)
        format.html { redirect_to tasks_type_url(@tasks_type), notice: "Tasks type was successfully updated." }
        format.json { render :show, status: :ok, location: @tasks_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tasks_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks_types/1 or /tasks_types/1.json
  def destroy
    @tasks_type.destroy

    respond_to do |format|
      format.html { redirect_to tasks_types_url, notice: "Tasks type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasks_type
      @tasks_type = TasksType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tasks_type_params
      params.require(:tasks_type).permit(:task_description)
    end
end
