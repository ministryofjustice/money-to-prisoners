# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# Mojular template assets
bowerrc_dir = JSON.parse(IO.read("#{Rails.root.to_s}/.bowerrc"))['directory']
Rails.application.config.assets.paths += [
  Rails.root.join(bowerrc_dir),
  Rails.root.join(bowerrc_dir, 'mojular', 'assets'),
  Rails.root.join(bowerrc_dir, 'govuk-template', 'assets'),
]
Rails.application.config.assets.precompile += %w(*.js *.png *.jpg *.ico)
