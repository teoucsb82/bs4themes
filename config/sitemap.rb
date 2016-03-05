# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.bs4themes.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  add '/themes/flatro'
  add '/themes/flatro/preview/landing'
  add '/themes/flatro/preview/carousel'
  add '/themes/lacey'
  add '/themes/lacey/preview/landing'
  add '/themes/lacey/preview/carousel'
  add '/themes/glowworm'
  add '/themes/glowworm/preview/landing'
  add '/themes/glowworm/preview/carousel'
  add '/themes/slice'
  add '/themes/slice/preview/landing'
  add '/themes/slice/preview/carousel'
  add '/themes/default'
  add '/themes/default/preview/landing'
  add '/themes/default/preview/carousel'
  add '/blog'
  add '/privacy'
  add '/help'
end
