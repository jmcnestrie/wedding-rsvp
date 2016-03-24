
hash = YAML.load_file(Rails.root.join('config', 'features.yml'))[Rails.env]

APP_CONFIG = hash.deep_symbolize_keys
