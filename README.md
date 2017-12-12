#Valid ISBN

Valid ISBN  was developed to check either type of ISBN 10 or 13. Then save the number along with were it was valid or not and save them within an s3 bucket

### To Install The App
1. Enter into the terminal
```sh
    https://github.com/ScStew/valid_isbn.git
```
2. set up an AWS s3 bucket

3. make a file withing the directory called "local_env.rb"

4. implement this code 
```sh
ENV['S3_BUCKET']='-name of bucket-'
ENV['S3_File']='-name of file-'
ENV['AWS_REGION']='-region-'
ENV['PATH_STYLE']='true'
ENV['AWS_ACCESS_KEY_ID']='-access key-'
ENV['AWS_SECRET_ACCESS_KEY']='-secret key-'
```
5. make sure you're using your aws S3 info
### To Start The App
1. Enter into the terminal
```sh
    ruby app.rb
```
go into youre browser and enter
```sh
localhost:4567
```
### To use the App
1. Go into youre browser and enter
```sh
localhost:4567
```
2. Then enter an ISBN to see if its valid or not
    
    