class PocsController < ApplicationController
  before_action :set_poc, only: [:show, :edit, :update, :destroy]

  # GET /pocs
  # GET /pocs.json
  def index
    @pocs = Poc.all
  end

  # GET /pocs/1
  # GET /pocs/1.json
  def show
  end

  # GET /pocs/new
  def new
    if params[:company_id]
      @company = Company.find(params[:company_id])
      @poc = Poc.new(company_id: @company.id)
    else
      @poc = Poc.new
    end
  end

  # GET /pocs/1/edit
  def edit
  end

  # POST /pocs
  # POST /pocs.json
  def create
    @poc = Poc.new(poc_params)

    respond_to do |format|
      if @poc.save
        format.html { redirect_to @poc, notice: 'Poc was successfully created.' }
        format.json { render :show, status: :created, location: @poc }
      else
        format.html { render :new }
        format.json { render json: @poc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pocs/1
  # PATCH/PUT /pocs/1.json
  def update
    respond_to do |format|
      if @poc.update(poc_params)
        format.html { redirect_to @poc, notice: 'Poc was successfully updated.' }
        format.json { render :show, status: :ok, location: @poc }
      else
        format.html { render :edit }
        format.json { render json: @poc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pocs/1
  # DELETE /pocs/1.json
  def destroy
    @poc.destroy
    respond_to do |format|
      format.html { redirect_to pocs_url, notice: 'Poc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poc
      @poc = Poc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poc_params
      params.require(:poc).permit(:name, :title, :role, :img, :linkedin, :twitter, :telephone, :email, :company_id)
    end
end
