activate :autoprefixer
activate :directory_indexes
activate :relative_assets

set :relative_links, true

# activate :s3_sync do |s3|
#   s3.bucket = 'bucket_name_here'
#   s3.delete = false
# end

# activate :google_analytics do |ga|
#   ga.tracking_id = 'my_awesome_id'
#   ga.minify = true
# end

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end

helpers do
end
