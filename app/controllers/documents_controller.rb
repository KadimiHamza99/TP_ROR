class DocumentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_auteur
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  # GET auteurs/1/documents
  def index
    @documents = @auteur.documents
  end

  # GET auteurs/1/documents/1
  def show
  end

  # GET auteurs/1/documents/new
  def new
    @document = @auteur.documents.build
  end

  # GET auteurs/1/documents/1/edit
  def edit
  end

  # POST auteurs/1/documents
  def create
    @document = @auteur.documents.build(document_params)

    if @document.save
      redirect_to(@document.auteur)
    else
      render action: 'new'
    end
  end

  # PUT auteurs/1/documents/1
  def update
    if @document.update_attributes(document_params)
      redirect_to(@document.auteur)
    else
      render action: 'edit'
    end
  end

  # DELETE auteurs/1/documents/1
  def destroy
    @document.destroy

    redirect_to @auteur
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auteur
      @auteur = Auteur.find(params[:auteur_id])
    end

    def set_document
      @document = @auteur.documents.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def document_params
      params.require(:document).permit(:titre, :auteur_id)
    end
end
