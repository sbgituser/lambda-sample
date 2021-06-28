aws lambda publish-layer-version \
  --layer-name puppetteer \
  --description "puppeteer 2.1.1" \
  --license-info "MIT" \
  --zip-file fileb://chrome_aws_lambda.zip \
  --compatible-runtimes nodejs10.x nodejs12.x
