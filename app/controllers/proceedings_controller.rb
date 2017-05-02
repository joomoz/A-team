class ProceedingsController < ReferencesController

  def new
    @proceeding = Proceeding.new
  end

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

  private
  def proceeding_params
      params.require(:proceeding).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
