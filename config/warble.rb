Warbler::Config.new do |config|
  config.dirs = %w(app db config lib log vendor tmp)

  config.war_name = "ShoppingPlatform"
  config.excludes = FileList[]
  config.includes = FileList[]
  config.features = %w()
  config.webinf_files = FileList[]
end