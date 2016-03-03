###
# Page options, layouts, aliases and proxies
###

activate :directory_indexes

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Use 'candidate.erb' layout for candidate pages
page '/candidates/*', layout: 'candidate'

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # TODO: Delete this when hosting without a path prefix
  set :http_prefix, '/hellouoft'

  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
