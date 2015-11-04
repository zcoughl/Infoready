require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "column name should not be too long" do
	@entry.colname = "a" * 51
	assert_not @entry.valid?
	asser true
  end
end
