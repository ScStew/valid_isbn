require 'rubygems'
require 'aws-sdk'
require 'csv'
  load "./local_env.rb" 
def connect_to_s3()
Aws::S3::Client.new(


    # access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    # secret_access_key: ENV['S3_SECRET'],
    # region: ENV['AWS_REGION'],
  
 )
  file = "isbn_bucket.csv"
  bucket = 'sms-isbn-bucket'
  s3 = Aws::S3::Resource.new(region: 'us-east-2')
  obj = s3.bucket(bucket).object(file)
# string data
obj.put(body: 'some code here to show something being added to the bucket')
# push entire file
    File.open('isbn.csv', 'rb') do |file|
      obj.put(body: file)
    end
end
connect_to_s3()