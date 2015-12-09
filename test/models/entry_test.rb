require 'test_helper'

class EntryTest < ActiveSupport::TestCase

  def setup
    @entry = Entry.new(tablename: "users_info", colname: "name",
                     coltype: "varchar", database: "b2b", mapping: "mapone")
  end

  test "should be valid" do
    assert @entry.valid?
  end

  test "tablename should be present" do
    @entry.tablename = "     "
    assert_not @entry.valid?
  end

  test "colname should be present" do
    @entry.colname = "     "
    assert_not @entry.valid?
  end

  test "coltype should be present" do
    @entry.coltype = "     "
    assert_not @entry.valid?
  end

  test "database should be present" do
    @entry.database = "     "
    assert_not @entry.valid?
  end

  test "mapping should be present" do
    @entry.mapping = "     "
    assert_not @entry.valid?
  end

  test "tablename should not be too long" do
    @entry.tablename = "a" * 51
    assert_not @entry.valid?
  end

  test "colname should not be too long" do
    @entry.colname = "a" * 51
    assert_not @entry.valid?
  end

  test "coltype should not be too long" do
    @entry.coltype = "a" * 51
    assert_not @entry.valid?
  end


end
