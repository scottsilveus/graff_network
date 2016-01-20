CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV.fetch("AWSAccessKeyId"),
      :aws_secret_access_key  => ENV.fetch("AWSSecretKey"),
      :region                 => 'us-west-2' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "unbuffable"
end