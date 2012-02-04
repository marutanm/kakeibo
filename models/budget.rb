class Budget
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :total, :type => Integer
  field :yearmonth, :type => String

  embeds_many :payments

  validates_length_of :yearmonth, in: 6..6

  def update_total
    update_attribute(:total, payments.collect{|p| p.price}.inject(&:+) )
  end

end
