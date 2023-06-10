# require File.expand_path(File.dirname(__FILE__) + '/neo')
require File.expand_path("#{File.dirname(__FILE__)}/neo")

class AboutNil < Neo::Koan
  def test_nil_is_an_object
    assert_equal true, nil.is_a?(Object), 'Unlike NULL in other languages'
  end

  def test_you_dont_get_null_pointer_errors_when_calling_methods_on_nil
    # What happens when you call a method that doesn't exist.  The
    # following begin/rescue/end code block captures the exception and
    # makes some assertions about it.

    begin
      nil.some_method_nil_doesnt_know_about
    rescue Exception => ex
      # What exception has been caught?
      assert_equal NoMethodError, ex.class

      # What message was attached to the exception?
      # (HINT: replace __ with part of the error message. // = regexp)
      assert_match(/undefined method `some_method_nil_doesnt_know_about' for nil:NilClass/, ex.message)
    end
  end

  def test_nil_has_a_few_methods_defined_on_it
    assert_equal true, nil.nil?
    assert_equal '', nil.to_s
    assert_equal 'nil', nil.inspect

    # THINK ABOUT IT:
    #
    # Is it better to use
    #    obj.nil?
    # or
    #    obj == nil
    # Why?

    # .nil? is more idiomatic and readable in ruby
    # .nil? is used to check if an object is nil (value does not exits)
    # == is for general value equality comparition between objects

    # value = nil # nil represent the absence of a value

    # puts value == nil # true
    # puts value == 0 # false

    # puts value.nil? # true
    # puts 0.nil? # false
    # puts nil.nil? # true
  end
end
