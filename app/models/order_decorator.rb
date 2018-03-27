Spree::Order.class_eval do
  before_validation(on: :create) do
    self.number = Spree::Order.last.present? ? (Spree::Order.last.number.to_i + 1).to_s : '1000'
  end
end
