require 'active_model/cases/test_base'

class ActiveModel::FormatValidatorTest < ClientSideValidations::ActiveModelTestBase

  def test_format_client_side_hash
    expected_hash = { :message => "is invalid", :with => /.+/ }
    assert_equal expected_hash, FormatValidator.new(:attributes => [:name], :with => /.+/).client_side_hash(@person, :age)
  end

end
