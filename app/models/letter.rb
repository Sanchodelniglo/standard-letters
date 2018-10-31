class Letter < ApplicationRecord
  belongs_to :category_company

  def self.forge_url(category, company)
    "/purposes/#{category.root_level.purpose}/#{category.ancestors.join('/')}/entreprise/#{company}"
  end
end
