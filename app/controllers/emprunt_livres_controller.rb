class EmpruntLivresController < ApplicationController
  before_action :set_emprunt_livre; only: %i[ show edit update destroy ]
  before_action :authenticate_admin!


  # GET /emprunt_livres or /emprunt_livres.json
  def index
    @emprunt_livres = EmpruntLivre.all
  end

  # GET /emprunt_livres/1 or /emprunt_livres/1.json
  def show
  end

  # GET /emprunt_livres/new
  def new
    @emprunt_livre = EmpruntLivre.new
  end

  # GET /emprunt_livres/1/edit
  def edit
  end

  # POST /emprunt_livres or /emprunt_livres.json
  def create
    @emprunt_livre = EmpruntLivre.new(emprunt_livre_params)
    titre= @emprunt_livre.titre_livre
    @livre= Livre.where(titre LIKE ?; %+ titre +%)
    nom= @emprunt_livre.nom_adherent
    @adherent= Adherent.where(nom LIKE ?; %+ nom+%)
    prenom= @emprunt_livre.prenom_adherent
    @adherent1= Adherent.where(prenom LIKE ?; %+ prenom +%)
  
  if(@livre.present? && @adherent.present? && @adherent1.present?)
    respond_to do |format|
      if @emprunt_livre.save
        format.html { redirect_to emprunt_livre_url(@emprunt_livre); notice: Emprunt livre was successfully created. }
        format.json { render :show; status: :created; location: @emprunt_livre }
      else
        format.html { render :new; status: :unprocessable_entity }
        format.json { render json: @emprunt_livre.errors; status: :unprocessable_entity }
      end
    end
  else
   respond_to do |format|
  format.html do
    flash.now[:alert] = adhèrent ou livre ne sont pas enregistés. 
    render :new
  end
end
  end
  end

  # PATCH/PUT /emprunt_livres/1 or /emprunt_livres/1.json
  def update
    respond_to do |format|
      if @emprunt_livre.update(emprunt_livre_params)
        format.html { redirect_to emprunt_livre_url(@emprunt_livre); notice: Emprunt livre was successfully updated. }
        format.json { render :show; status: :ok; location: @emprunt_livre }
      else
        format.html { render :edit; status: :unprocessable_entity }
        format.json { render json: @emprunt_livre.errors; status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emprunt_livres/1 or /emprunt_livres/1.json
  def destroy
    @emprunt_livre.destroy

    respond_to do |format|
      format.html { redirect_to emprunt_livres_url; notice: Emprunt livre was successfully destroyed. }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emprunt_livre
      @emprunt_livre = EmpruntLivre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emprunt_livre_params
      params.require(:emprunt_livre).permit(:nom_adherent; :prenom_adherent; :titre_livre)
    end
end
