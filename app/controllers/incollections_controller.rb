class IncollectionsController < ReferencesController

  def new
    @incollection = Incollection.new
  end

  def edit
    @entry_type = "incollection"
  end

  def create
    @incollection = Incollection.new(incollection_params)
    if @incollection.key.blank?
        @incollection.create_key
    end

    respond_to do |format|
      if @incollection.save
        format.html { redirect_to root_path, notice: 'Incollection was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  private

  def incollection_params
      params.require(:incollection).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
