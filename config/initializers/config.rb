### This is only for dev
CONFIG_API = YAML.load_file("#{Rails.root.to_s}/config/keys.yml") if Rails.env.production?