class EmpruntPcsController < ApplicationController
  before_action :set_emprunt_pc; only: %i[ show edit update destroy ]
  before_action :authenticate_admin!
  
  # GET /emprunt_pcs or /emprunt_pcs.json
  def index
    @emprunt_pcs = EmpruntPc.all
  end

  # GET /emprunt_pcs/1 or /emprunt_pcs/1.json
  def show
  end

  # GET /emprunt_pcs/new
  def new
    @emprunt_pc = EmpruntPc.new
  end

  # GET /emprunt_pcs/1/edit
  def edit
  end

  # POST /emprunt_pcs or /emprunt_pcs.json
  def create
    @emprunt_pc = EmpruntPc.new(emprunt_pc_params)
    marque= @emprunt_pc.marque_ordinateur
    @ordinateur= Ordinateur.where(marque LIKE ?; %+ marque +%)
    nom= @emprunt_pc.nom_adherent
    @adherent= Adherent.where(nom LIKE ?; %+ nom +%)
    prenom= @emprunt_pc.prenom_adherent
    @adherent1= Adherent.where(prenom LIKE ?; %+ prenom +%)
  
  if(@ordinateur.present? && @adherent.present? && @adherent1.present?)
    respond_to do |format|
      if @emprunt_pc.save
        format.html { redirect_to emprunt_pc_url(@emprunt_pc); notice: Emprunt pc was successfully created. }
        format.json { render :show; status: :created; location: @emprunt_pc }
      else
        format.html { render :new; status: :unprocessable_entity }
        format.json { render json: @emprunt_pc.errors; status: :unprocessable_entity }
      end
    end
    else
   respond_to do |format|
  format.html do
    flash.now[:alert] = adhèrent ou ordinateur ne sont pas enregistés. 
    render :new
    end
  end
end
end

  # PATCH/PUT /emprunt_pcs/1 or /emprunt_pcs/1.json
  def update
    respond_to do |format|
      if @emprunt_pc.update(emprunt_pc_params)
        format.html { redirect_to emprunt_pc_url(@emprunt_pc); notice: Emprunt pc was successfully updated. }
        format.json { render :show; status: :ok; location: @emprunt_pc }
      else
        format.html { render :edit; status: :unprocessable_entity }
        format.json { render json: @emprunt_pc.errors; status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emprunt_pcs/1 or /emprunt_pcs/1.json
  def destroy
    @emprunt_pc.destroy

    respond_to do |format|
      format.html { redirect_to emprunt_pcs_url; notice: Emprunt pc was successfully destroyed. }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emprunt_pc
      @emprunt_pc = EmpruntPc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emprunt_pc_params
      params.require(:emprunt_pc).permit(:nom_adherent; :prenom_adherent; :marque_ordinateur)
    end
end
