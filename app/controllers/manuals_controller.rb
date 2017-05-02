class ManualsController < ReferencesController

  def new
    @manual = Manual.new
  end

  def create
    @manual = Manual.new(manual_params)
    if @manual.key.blank?
        @manual.create_key
    end

    respond_to do |format|
      if @manual.save
        format.html { redirect_to root_path, notice: 'Manual was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def manual_params
      params.require(:manual).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
