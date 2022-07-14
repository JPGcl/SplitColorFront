class TasksConfigsController < ApplicationController
  before_action :set_tasks_config, only: %i[ show edit update destroy ]

  # GET /tasks_configs or /tasks_configs.json
  def index
    @tasks_configs = TasksConfig.all
  end

  # GET /tasks_configs/1 or /tasks_configs/1.json
  def show
  end

  # GET /tasks_configs/new
  def new
    @tasks_config = TasksConfig.new
  end

  # GET /tasks_configs/1/edit
  def edit
  end

  # POST /tasks_configs or /tasks_configs.json
  def create
    @tasks_config = TasksConfig.new(tasks_config_params)

    respond_to do |format|
      if @tasks_config.save
        format.html { redirect_to tasks_config_url(@tasks_config), notice: "Tasks config was successfully created." }
        format.json { render :show, status: :created, location: @tasks_config }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tasks_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks_configs/1 or /tasks_configs/1.json
  def update
    respond_to do |format|
      if @tasks_config.update(tasks_config_params)
        format.html { redirect_to tasks_config_url(@tasks_config), notice: "Tasks config was successfully updated." }
        format.json { render :show, status: :ok, location: @tasks_config }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tasks_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks_configs/1 or /tasks_configs/1.json
  def destroy
    @tasks_config.destroy

    respond_to do |format|
      format.html { redirect_to tasks_configs_url, notice: "Tasks config was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasks_config
      @tasks_config = TasksConfig.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tasks_config_params
      params.require(:tasks_config).permit(:task_id, :image_id, :config_id, :config_value, :enabled)
    end
end
