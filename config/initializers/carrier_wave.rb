if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_credentials = {
        # Amazon S3用の設定
        :provider              => 'AWS',
        :region                => ENV['ap-northeast-1'],                          #S3_REGION  
        :aws_access_key_id     => ENV['AKIAVS54BXYASLOLVNKT'],                    #S3_ACCESS_KEY
        :aws_secret_access_key => ENV['BtK0yzlhVj/jY8kjn5aOGWQW3c0x5E9DnFPGeiYR'] #S3_SECRET_KEY
      }
      config.fog_directory     =  ENV['20622-sample.app']                        #S3_BUCKET
    end
  end