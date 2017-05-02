class TechreportsController < ReferencesController

  def new
    @techreport = Techreport.new
  end

  def create
    @techreport = Techreport.new(techreport_params)
    if @techreport.key.blank?
        @techreport.create_key
    end

    respond_to do |format|
      if @techreport.save
        format.html { redirect_to root_path, notice: 'Techreport was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def techreport_params
      params.require(:techreport).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
