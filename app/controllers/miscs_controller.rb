class MiscsController < ReferencesController

  def new
    @misc = Misc.new
  end

  def create
    @misc = Misc.new(misc_params)
    if @misc.key.blank?
        @misc.create_key
    end

    respond_to do |format|
      if @misc.save
        format.html { redirect_to root_path, notice: 'Misc was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def misc_params
      params.require(:misc).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
