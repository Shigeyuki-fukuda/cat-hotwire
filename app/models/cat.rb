class Cat < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # 検索可能な属性を指定
  # refs: https://qiita.com/Yamashita-Taiki/items/764be62a8c20485ece54
  def self.ransackable_attributes(auth_object = nil)
    [ "name", "age" ]
  end
end
