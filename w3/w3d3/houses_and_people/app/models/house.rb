class House < ActiveRecord::Base
    validates :address, presence: true

    has_many(
    :residents,
    class_name: "People",
    foreign_key: :house_id,
    primary_key: :id
    )

end
