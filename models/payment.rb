class Payment
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :genre, :type => String
  field :title, :type => String
  field :price, :type => Integer

  belongs_to :budget

end
