class Reference < ActiveRecord::Base

  def create_key
    key = self.author.partition(" ").first + self.year.to_s + self.title.partition(" ").first
    references = Reference.all
    abc = "abcdefghijklmnopqrstuvwxyz"
    abcIndex = 0
    while Reference.exists?(key: key)
        if abcIndex > 0 && abcIndex < abc.length
            key = key.chop
        end
        key = key + abc[abcIndex]
        if abcIndex < abc.length
            abcIndex = abcIndex + 1
        else
            abcIndex = 0
        end
    end
    self.key = key
  end

  def serialized_fields
    [:author, :title, :journal, :volume, :number, :month, :year, :pages, :publisher, :editor, :booktitle, :organization, :address, :note, :edition, :series, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type] 
  end

  def to_s
    str = "@#{entry_type}{#{key},\n"
    serialized_fields.each do |field|
      str += "      #{field.to_s} = {#{self[field]}},\n" unless self[field].blank?
    end
    str += "}\n"
  end
end
