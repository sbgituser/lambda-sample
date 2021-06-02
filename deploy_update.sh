cd 01
zip -r 01.zip .
aws lambda update-function-code \
    --function-name 01 \
    --zip-file fileb://01.zip