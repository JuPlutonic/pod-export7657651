# This will stop BetterErrors from trying to render larger objects, which can cause
# slow loading times and browser performance problems. Stated size is in characters and refers
# to the length of #inspect's payload for the given object. Please be aware that HTML escaping
# modifies the size of this payload so setting this limit too precisely is not recommended.
#                               default value: 100_000
#                   to return better_errors uncomment it in Gemfile and run `bundle`
# if ENV['RAILS_ENV'] == 'development'
#   BetterErrors.maximum_variable_inspect_size = 2_900_000
#   BetterErrors.ignored_classes = ['ActionDispatch::Request',
#                                   'ActionDispatch::Response']
# end
