function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'qa';
  }
  var config = {
    env: env,
    baseURL : 'https://test-api.porting.com',
    telephoneNo: '5274225984'
  }
  if (env == 'qa')
   {
    // customize
    config.baseURL = 'https://test-api.porting.com';
    config.telephoneNo = '5274225984';
    var result = karate.callSingle('classpath:features/TC-01 Login or Token.feature',config);
 	 config.accessToken = result;
    } 
  else if (env == 'dev') {
    var result = karate.callSingle('classpath:features/TC-01 Login or Token.feature',config);
 	 config.accessToken = result;
  }
  return config;
}