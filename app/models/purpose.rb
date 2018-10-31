class Purpose < ApplicationRecord
  has_many :categories

  def to_param
    "#{id} #{name}".parameterize
  end

  def to_s
    to_param
  end
end
