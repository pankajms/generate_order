class AccountRequest < ActiveRecord::Base
  attr_accessible :email, :name, :web_context_name, :confirmed
end
