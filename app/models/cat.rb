class Cat < ApplicationRecord
  # 検索可能な属性を指定
  # refs: https://qiita.com/Yamashita-Taiki/items/764be62a8c20485ece54
  def self.ransackable_attributes(auth_object = nil)
    [ "name", "age" ]
  end
end
