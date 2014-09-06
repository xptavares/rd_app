class ApiConfigsController < ApplicationController
  before_action :set_api_config, only: [:show, :edit, :update, :destroy]

  # GET /api_configs
  # GET /api_configs.json
  def index
    @api_configs = ApiConfig.all
  end

  # GET /api_configs/1
  # GET /api_configs/1.json
  def show
  end

  # GET /api_configs/new
  def new
    @api_config = ApiConfig.new
  end

  # GET /api_configs/1/edit
  def edit
  end

  # POST /api_configs
  # POST /api_configs.json
  def create
    @api_config = ApiConfig.new(api_config_params)

    respond_to do |format|
      if @api_config.save
        format.html { redirect_to @api_config, notice: 'Api config was successfully created.' }
        format.json { render :show, status: :created, location: @api_config }
      else
        format.html { render :new }
        format.json { render json: @api_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api_configs/1
  # PATCH/PUT /api_configs/1.json
  def update
    respond_to do |format|
      if @api_config.update(api_config_params)
        format.html { redirect_to @api_config, notice: 'Api config was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_config }
      else
        format.html { render :edit }
        format.json { render json: @api_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api_configs/1
  # DELETE /api_configs/1.json
  def destroy
    @api_config.destroy
    respond_to do |format|
      format.html { redirect_to api_configs_url, notice: 'Api config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_config
      @api_config = ApiConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_config_params
      params.require(:api_config).permit(:username, :password, :security_token, :client_id, :client_secret)
    end
end
