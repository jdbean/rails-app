# == Schema Information
#
# Table name: loans
#
#  id          :integer          not null, primary key
#  item_id     :integer
#  borrower_id :integer
#  loaned      :datetime
#  returned    :datetime
#
# Indexes
#
#  index_loans_on_borrower_id  (borrower_id)
#  index_loans_on_item_id      (item_id)
#

class Loan < ApplicationRecord
  belongs_to :item
  belongs_to :borrower, class_name: "User", foreign_key: "borrower_id"
end