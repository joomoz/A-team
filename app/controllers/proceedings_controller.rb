class ProceedingsController < ApplicationController
  before_action :set_proceeding, only: [:show, :edit, :update, :destroy]

  # GET /proceedings
  # GET /proceedings.json
  def index
    @proceedings = Proceeding.all
  end

  # GET /proceedings/1
  # GET /proceedings/1.json
  def show
  end

  # GET /proceedings/new
  def new
    @proceeding = Proceeding.new
  end

  # GET /proceedings/1/edit
  def edit
    @entry_type = "proceedings"
  end

  # POST /proceedings
  # POST /proceedings.json
  def create
    @proceeding = Proceeding.new(proceeding_params)
    if @proceeding.key.blank?
        @proceeding.create_key
    end

    respond_to do |format|
      if @proceeding.save
        format.html { redirect_to root_path, notice: 'Proceeding was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /proceedings/1
  # PATCH/PUT /proceedings/1.json
  def update
    respond_to do |format|
      if @proceeding.update(proceeding_params)
        format.html { redirect_to @proceeding, notice: 'Proceeding was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /proceedings/1
  # DELETE /proceedings/1.json
  def destroy
    @proceeding.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Proceeding was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proceeding
      @proceeding = Proceeding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proceeding_params
      params.require(:proceeding).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
