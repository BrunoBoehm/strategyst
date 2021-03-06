class ValuePropositionsController < ApplicationController
  before_action :set_value_proposition, only: [:show, :edit, :update, :destroy]

  # GET /value_propositions
  # GET /value_propositions.json
  def index
    @value_propositions = ValueProposition.all
  end

  # GET /value_propositions/1
  # GET /value_propositions/1.json
  def show
  end

  # GET /value_propositions/new
  def new
    if params[:company_id]
      @value_proposition = ValueProposition.new(company_id: params[:company_id])
    else
      @value_proposition = ValueProposition.new
    end
    
  end

  # GET /value_propositions/1/edit
  def edit
  end

  # POST /value_propositions
  # POST /value_propositions.json
  def create
    @value_proposition = ValueProposition.new(value_proposition_params)

    respond_to do |format|
      if @value_proposition.save
        format.html { redirect_to @value_proposition, notice: 'Value proposition was successfully created.' }
        format.json { render :show, status: :created, location: @value_proposition }
      else
        format.html { render :new }
        format.json { render json: @value_proposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /value_propositions/1
  # PATCH/PUT /value_propositions/1.json
  def update
    respond_to do |format|
      if @value_proposition.update(value_proposition_params)
        format.html { redirect_to @value_proposition, notice: 'Value proposition was successfully updated.' }
        format.json { render :show, status: :ok, location: @value_proposition }
      else
        format.html { render :edit }
        format.json { render json: @value_proposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /value_propositions/1
  # DELETE /value_propositions/1.json
  def destroy
    @value_proposition.destroy
    respond_to do |format|
      format.html { redirect_to value_propositions_url, notice: 'Value proposition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_value_proposition
      @value_proposition = ValueProposition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def value_proposition_params
      params.require(:value_proposition).permit(:name, :product_service, :price, :promotion, :place, :gain_creator, :pain_reliever, :differentiation, :company_id)
    end
end
