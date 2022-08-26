function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';

  }

 /* var config = {
    env: env,
    myVarName: 'someValue'
  }*/
var config={
     env: env,
    myVarName: 'Test Kommunicate',
    env: env,
    myVarName: 'Welcome to Kommunicate Test automation world',
    baseUrl: 'https://kompose-test.kommunicate.io',
    baseUrlApi:'https://api-test.kommunicate.io',
    baseUrlChat:'https://chat.kommunicate.io',
    Authorization: 'Basic S29tcG9zZTpOTFA='
}

  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}