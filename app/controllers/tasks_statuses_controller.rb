class TasksStatusesController < ApplicationController
  before_action :set_tasks_status, only: %i[ show edit update destroy ]

  # GET /tasks_statuses or /tasks_statuses.json
  def index
    @tasks_statuses = TasksStatus.all
  end

  # GET /tasks_statuses/1 or /tasks_statuses/1.json
  def show
  end

  # GET /tasks_statuses/new
  def new
    @tasks_status = TasksStatus.new
  end

  # GET /tasks_statuses/1/edit
  def edit
  end

  # POST /tasks_statuses or /tasks_statuses.json
  def create
    @tasks_status = TasksStatus.new(tasks_status_params)

    respond_to do |format|
      if @tasks_status.save
        format.html { redirect_to tasks_status_url(@tasks_status), notice: "Tasks status was successfully created." }
        format.json { render :show, status: :created, location: @tasks_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tasks_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks_statuses/1 or /tasks_statuses/1.json
  def update
    respond_to do |format|
      if @tasks_status.update(tasks_status_params)
        format.html { redirect_to tasks_status_url(@tasks_status), notice: "Tasks status was successfully updated." }
        format.json { render :show, status: :ok, location: @tasks_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tasks_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks_statuses/1 or /tasks_statuses/1.json
  def destroy
    @tasks_status.destroy

    respond_to do |format|
      format.html { redirect_to tasks_statuses_url, notice: "Tasks status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasks_status
      @tasks_status = TasksStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tasks_status_params
      params.require(:tasks_status).permit(:task_status_description)
    end
end
