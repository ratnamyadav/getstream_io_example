require 'stream_rails'

StreamRails.configure do |config|
  config.api_key      = 'fa8qr3yk3bj4'
  config.api_secret   = 'gny95ckpngj72vxkydbfc96jz5k2fsgdxnwf6ctc46mn4nvj4s7ur8achdkxjed4'
  config.timeout      = 30                  # Optional, defaults to 3
  config.location     = 'us-east'           # Optional, defaults to 'us-east'
  config.api_hostname = 'stream-io-api.com'
end