activate :autoprefixer
activate :directory_indexes

set :relative_links, true
set :haml, :format => :html5

activate :s3_sync do |s3|
  s3.bucket = 'www.ancientcityruby.com'
  s3.delete = false
end

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-7742210-7'
  ga.minify = true
end

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end

helpers do
  def previous_speakers
    data.previous_speakers.sort_by{|s| s['name']}
  end
end
