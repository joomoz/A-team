class InproceedingsController < ApplicationController
  before_action :set_inproceeding, only: [:show, :edit, :update, :destroy]

  # GET /inproceedings
  # GET /inproceedings.json
  def index
    @inproceedings = Inproceeding.all
  end

  # GET /inproceedings/1
  # GET /inproceedings/1.json
  def show
  end

  # GET /inproceedings/new
  def new
    @inproceeding = Inproceeding.new
  end

  # GET /inproceedings/1/edit
  def edit
    @entry_type = "inproceedings"
  end

  # POST /inproceedings
  # POST /inproceedings.json
  def create
    @inproceeding = Inproceeding.new(inproceeding_params)

    respond_to do |format|
      if @inproceeding.save
        format.html { redirect_to root_path, notice: 'Inproceeding was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /inproceedings/1
  # PATCH/PUT /inproceedings/1.json
  def update
    respond_to do |format|
      if @inproceeding.update(inproceeding_params)
        format.html { redirect_to @inproceeding, notice: 'Inproceeding was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /inproceedings/1
  # DELETE /inproceedings/1.json
  def destroy
    @inproceeding.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Inproceeding was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inproceeding
      @inproceeding = Inproceeding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inproceeding_params
      params.require(:inproceeding).permit(:key, :author, :title, :journal, :year, :volume,
      :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle,
      :editor, :organization, :entry_type)
    end
end
