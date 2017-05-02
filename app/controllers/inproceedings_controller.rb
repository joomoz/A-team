class InproceedingsController < ReferencesController

  def new
    @inproceeding = Inproceeding.new
  end

  def create
    @inproceeding = Inproceeding.new(inproceeding_params)
    if @inproceeding.key.blank?
        @inproceeding.create_key
    end

    respond_to do |format|
      if @inproceeding.save
        format.html { redirect_to root_path, notice: 'Inproceeding was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def inproceeding_params
      params.require(:inproceeding).permit(:key, :author, :title, :journal, :year, :volume,
      :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle,
      :editor, :organization, :entry_type)
    end
end
