class LeadHelpersController < ApplicationController
  before_action :set_lead_helper, only: [:show, :edit, :update, :destroy]

  # GET /lead_helpers
  # GET /lead_helpers.json
  def index
    @lead_helpers = LeadHelper.all
  end

  # GET /lead_helpers/1
  # GET /lead_helpers/1.json
  def show
  end

  # GET /lead_helpers/new
  def new
    @lead_helper = LeadHelper.new
  end

  # GET /lead_helpers/1/edit
  def edit
  end

  # POST /lead_helpers
  # POST /lead_helpers.json
  def create
    @lead_helper = LeadHelper.new(lead_helper_params)

    respond_to do |format|
      if @lead_helper.save
        format.html { redirect_to @lead_helper, notice: 'Lead helper was successfully created.' }
        format.json { render :show, status: :created, location: @lead_helper }
      else
        format.html { render :new }
        format.json { render json: @lead_helper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lead_helpers/1
  # PATCH/PUT /lead_helpers/1.json
  def update
    respond_to do |format|
      if @lead_helper.update(lead_helper_params)
        format.html { redirect_to @lead_helper, notice: 'Lead helper was successfully updated.' }
        format.json { render :show, status: :ok, location: @lead_helper }
      else
        format.html { render :edit }
        format.json { render json: @lead_helper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lead_helpers/1
  # DELETE /lead_helpers/1.json
  def destroy
    @lead_helper.destroy
    respond_to do |format|
      format.html { redirect_to lead_helpers_url, notice: 'Lead helper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead_helper
      @lead_helper = LeadHelper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lead_helper_params
      params.require(:lead_helper).permit(:title, :phone, :company, :email,, :first_name, :last_name)
    end
end
