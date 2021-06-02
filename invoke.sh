aws lambda invoke \
    --invocation-type Event \
    --function-name 01 \
    --region ap-northeast-1 \
    --payload '{"key1":"test1", "key2":"test2"}' \
    outputfile.txt
