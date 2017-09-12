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





def get_object()
   s3 = Aws::S3::Client.new
  resp = s3.get_object(bucket:'sms-isbn-bucket', key:'results.csv')
  isbn = resp.body.read
  if isbn == nil
    ret = nil
  else
    ret = isbn.split
      
  end
  ret
end