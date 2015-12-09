require 'test_helper'

class MappingTest < ActiveSupport::TestCase

  def setup
    @user = Mapping.new(database1: "b2b", database2: "InfoReady",
                     user: "David Hello")
  end

  test "should be valid" do
    assert @mapping.valid?
  end

  test "database1 should be present" do
    @mapping.database1 = "     "
    assert_not @mapping.valid?
  end

    test "database2 should be present" do
    @mapping.database2 = "     "
    assert_not @mapping.valid?
  end

    test "database1 should not be too long" do
    @mapping.database1 = "a" * 51
    assert_not @mapping.valid?
  end

  test "database2 should not be too long" do
    @mapping.database2 = "a" * 51
    assert_not @mapping.valid?
  end

  test "database1 and database2 should be unique" do
    @mapping.database1 = @mapping.database2
    @mapping.save
    assert_not @mapping.valid?
  end

  test "database1 , database2 , user should be present (nonblank)" do
    @mapping.database1 = " " * 51
    @mapping.database2 = " " * 51
    @mapping.user = " " * 51
    assert_not @mapping.valid?
  end

end
