aws lambda create-function \
    --function-name 01 \
    --runtime nodejs10.x \
    --role arn:aws:iam::156015508310:role/service-role/myfunction-role-f3ws0z4f \
    --handler index.handler \
    --zip-file fileb://01.zip \
    --region ap-northeast-1
