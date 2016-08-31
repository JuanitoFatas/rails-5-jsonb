class Car < ApplicationRecord
  scope :financing_offer_eq, ->(field, value) do
    where(
      "cars.financing_offer->>:field = :value",
      field: field,
      value: value
    )
  end
end
