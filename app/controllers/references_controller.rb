class ReferencesController < ApplicationController
  before_action :set_reference, only: [:show, :edit, :update, :destroy]

  def index
    @references = Reference.paginate(:page => params[:page], :per_page => 20)
  end

  def show
  end

  def new
    @reference = Reference.new
  end

  def edit
  end

  def create
    @reference = Reference.new(reference_params)
    @reference.create_key

    respond_to do |format|
      if @reference.save
        format.html { redirect_to @reference, notice: 'Reference was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @reference.update(reference_params)
        format.html { redirect_to @reference, notice: 'Reference was successfully updated.' }
        format.json { render :show, status: :ok, location: @reference }
      else
        format.html { render :edit }
        format.json { render json: @reference.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reference.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Reference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def bibtex
    redirect_to "#{Rails.root}/app/views/references/download_bibtex.erb"
  end

  def download
    generate
    send_file(
        "#{Rails.root}/public/sigproc.bib",
        :disposition => 'attachment',
        :x_sendfile=>true
    )
  end

  def generate
    myfile = File.open("#{Rails.root}/public/sigproc.bib", "w")
    Reference.all.each do |r|
      myfile.write r.to_s
    end
    myfile.close
  end



  private

    def set_reference
      @reference = Reference.find(params[:id])
    end

      def reference_params
      params.require(:reference).permit(:key, :entry_type, :author, :title, :journal,
      :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition,
      :booktitle, :editor, :organization, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
