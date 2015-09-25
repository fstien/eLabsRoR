# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


# The CSS and JS for mobile Solow
Rails.application.config.assets.precompile += %w( solowMobile.js )
Rails.application.config.assets.precompile += %w( solowMobile.css )

# The CSS and JS for Desktop Solow
Rails.application.config.assets.precompile += %w( solowDesktop.js )
Rails.application.config.assets.precompile += %w( solowDesktop.css )

# The library for Solow
Rails.application.config.assets.precompile += %w( solowScripts/SolowLibrary.js )

# The CSS and JS libraries for mobile
Rails.application.config.assets.precompile += %w( applicationMobile.js )
Rails.application.config.assets.precompile += %w( applicationMobile.css )

# The CSS and JS libraries for Desktop
Rails.application.config.assets.precompile += %w( applicationDesktop.js )
Rails.application.config.assets.precompile += %w( applicationDesktop.css )

# Solow Desktop
Rails.application.config.assets.precompile += %w( solowScripts/canvasGraphDesktop.js )
Rails.application.config.assets.precompile += %w( solowScripts/canvasControlsDesktop.js )

# Solow Mobile
Rails.application.config.assets.precompile += %w( solowScripts/canvasGraphMobile.js )
Rails.application.config.assets.precompile += %w( solowScripts/canvasControlsMobile.js )
