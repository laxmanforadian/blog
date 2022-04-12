class TtdsController < ApplicationController
  before_action :set_ttd, only: %i[ show edit update destroy ]

  # GET /ttds or /ttds.json
  def index
    @ttds = Ttd.all
  end

  # GET /ttds/1 or /ttds/1.json
  def show
  end

  # GET /ttds/new
  def new
    @ttd = Ttd.new
  end

  # GET /ttds/1/edit
  def edit
  end

  # POST /ttds or /ttds.json
  def create
    @ttd = Ttd.new(ttd_params)

    respond_to do |format|
      if @ttd.save
        format.html { redirect_to ttd_url(@ttd), notice: "Ttd was successfully created." }
        format.json { render :show, status: :created, location: @ttd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ttd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ttds/1 or /ttds/1.json
  def update
    respond_to do |format|
      if @ttd.update(ttd_params)
        format.html { redirect_to ttd_url(@ttd), notice: "Ttd was successfully updated." }
        format.json { render :show, status: :ok, location: @ttd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ttd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ttds/1 or /ttds/1.json
  def destroy
    @ttd.destroy

    respond_to do |format|
      format.html { redirect_to ttds_url, notice: "Ttd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ttd
      @ttd = Ttd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ttd_params
      params.require(:ttd).permit(:name, :age, :email, :place, :time)
    end
end
