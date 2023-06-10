require File.expand_path("#{File.dirname(__FILE__)}/neo")

C = 'top level'

class AboutConstants < Neo::Koan
  C = 'nested'

  def test_nested_constants_may_also_be_referenced_with_relative_paths
    assert_equal 'nested', C
  end

  def test_top_level_constants_are_referenced_by_double_colons
    assert_equal 'top level', ::C
  end

  def test_nested_constants_are_referenced_by_their_complete_path
    assert_equal 'nested', AboutConstants::C
    assert_equal 'nested', ::AboutConstants::C
  end

  # ------------------------------------------------------------------

  class Animal
    LEGS = 4
    def legs_in_animal
      LEGS
    end

    class NestedAnimal
      def legs_in_nested_animal
        LEGS
      end
    end
  end

  def test_nested_classes_inherit_constants_from_enclosing_classes
    assert_equal 4, Animal::NestedAnimal.new.legs_in_nested_animal
  end

  # ------------------------------------------------------------------

  class Reptile < Animal
    def legs_in_reptile
      LEGS
    end
  end

  def test_subclasses_inherit_constants_from_parent_classes
    assert_equal 4, Reptile.new.legs_in_reptile
  end

  # ------------------------------------------------------------------

  class MyAnimals
    LEGS = 2 # win nested constant, because we define the constant in the class

    class Bird < Animal # Animal inherit value 4
      def legs_in_bird
        LEGS
      end
    end
  end

  def test_who_wins_with_both_nested_and_inherited_constants
    assert_equal 2, MyAnimals::Bird.new.legs_in_bird
  end

  # QUESTION: Which has precedence: The constant in the lexical scope,
  # or the constant from the inheritance hierarchy?

  # Ruby will look for the constant in the current scope and use that value,
  # if it exist, and if is true, Ruby does not check the inheritance value.
  # This behavior allows you to override constants in subclasses without
  # affecting the value of the constant in the parent class or the rest of
  # the inheritance hierarchy.

  # ------------------------------------------------------------------

  # Compact style Module::Class
  class MyAnimals::Oyster < Animal
    # if we define this constant here the value will be 0
    # LEGS = 0

    def legs_in_oyster
      # since we do not define the constant value, then the value is from inheritance
      LEGS
    end
  end

  # Nested module/class style, prefer this
  # module MyAnimals
  #   class Oyster < Animal
  #     def legs_in_oyster
  #       LEGS
  #     end
  #   end
  # end

  def test_who_wins_with_explicit_scoping_on_class_definition
    assert_equal 4, MyAnimals::Oyster.new.legs_in_oyster
  end

  # QUESTION: Now which has precedence: The constant in the lexical
  # scope, or the constant from the inheritance hierarchy?  Why is it
  # different than the previous answer?

  # When we use the scope resolution operator '::', the constant in the lexical
  # scope takes precedence over the constant from the inheritance hierarchy
  # unless you define a constant explicitly like the first example
end
