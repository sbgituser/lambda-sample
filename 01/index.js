console.log('Liading funciton')
const AWS = require('aws-sdk')
const ddb = new AWS.DynamoDB.DocumentClient({region: 'ap-northeast-1'})

exports.handler = async (event, context, callback) => {
  console.log(event['test'])
  const requestId = context.awsRequestId;
  await createMessage(requestId).then(() => {
    callback(null, {
      statusCode: 201,
      bydo: '',
      headers: {
        'Access Control Allow Origin': '*'
      }
    })
  }).catch((err) => {
    console.error(err)
  });
};

function createMessage(requestId) {
  const params = {
    TableName: 'Music',
    Item: {
      'アーティスト': requestId,
      '曲名': 'Hello from lambda'
    }
  }
  return ddb.put(params).promise();
}
