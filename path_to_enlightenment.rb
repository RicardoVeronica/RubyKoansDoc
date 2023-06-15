# The path to Ruby Enlightenment starts with the following:

$LOAD_PATH << File.dirname(__FILE__)

require 'about_asserts' # ok
require 'about_true_and_false' # ok
require 'about_strings' # ok
require 'about_symbols' # ok
require 'about_arrays' # ok
require 'about_array_assignment' # ok
require 'about_objects' # ok
require 'about_nil' # ok
require 'about_hashes' # ok
require 'about_methods' # ok
in_ruby_version('2', '3') do
  require 'about_keyword_arguments'
end
require 'about_constants' # ok x
require 'about_regular_expressions' # ok x
require 'about_control_statements' # ok x
require 'about_triangle_project' # ok x
require 'about_exceptions' # ok x
require 'about_triangle_project_2' # ok x
require 'about_iteration' # ok x
require 'about_blocks' # ok x
require 'about_sandwich_code' # ok x
# require 'about_scoring_project' # pending
require 'about_classes'
require 'about_open_classes'
require 'about_dice_project'
require 'about_inheritance'
require 'about_modules'
require 'about_scope'
require 'about_class_methods'
require 'about_message_passing'
require 'about_proxy_object_project'
require 'about_to_str'
in_ruby_version('jruby') do
  require 'about_java_interop'
end
require 'about_extra_credit'
