class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  bowerrc_dir = JSON.parse(IO.read("#{Rails.root.to_s}/.bowerrc"))['directory']
  prepend_view_path(File.expand_path("#{Rails.root.to_s}/#{bowerrc_dir}/mojular"))
end
