class CryptoPortalsController < ApplicationController
  before_action :set_crypto_portal, only: %i[ show edit update destroy ]

  # GET /crypto_portals or /crypto_portals.json
  def index
    @crypto_portals = CryptoPortal.all
  end

  # GET /crypto_portals/1 or /crypto_portals/1.json
  def show
  end

  # GET /crypto_portals/new
  def new
    @crypto_portal = CryptoPortal.new
  end

  # GET /crypto_portals/1/edit
  def edit
  end

  # POST /crypto_portals or /crypto_portals.json
  def create
    @crypto_portal = CryptoPortal.new(crypto_portal_params)

    respond_to do |format|
      if @crypto_portal.save
        format.html { redirect_to crypto_portal_url(@crypto_portal), notice: "Crypto portal was successfully created." }
        format.json { render :show, status: :created, location: @crypto_portal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crypto_portal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crypto_portals/1 or /crypto_portals/1.json
  def update
    respond_to do |format|
      if @crypto_portal.update(crypto_portal_params)
        format.html { redirect_to crypto_portal_url(@crypto_portal), notice: "Crypto portal was successfully updated." }
        format.json { render :show, status: :ok, location: @crypto_portal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crypto_portal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crypto_portals/1 or /crypto_portals/1.json
  def destroy
    @crypto_portal.destroy

    respond_to do |format|
      format.html { redirect_to crypto_portals_url, notice: "Crypto portal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crypto_portal
      @crypto_portal = CryptoPortal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crypto_portal_params
      params.require(:crypto_portal).permit(:user_id, :currency, :quantity)
    end
end
