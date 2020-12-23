let auth0 = null;

const fetchAuthConfig = () => fetch("/auth_config.json");

const configureClient = async () => {
  const response = await fetchAuthConfig();
  const config = await response.json();

  auth0 = await createAuth0Client({
    domain: config.domain,
    client_id: config.clientId
  });
};

window.onload = async () => {
  await configureClient();
}

// This event callback pushes its results into the results array and returns a promise.
function login(_options, params, _event, results) {
  var promiseObj = new Promise(function(resolve) {
    console.log('Auth0 login called');
    auth0.loginWithRedirect({
      redirect_uri: window.location.origin
    });
    results.push({
      action: 'auth0.login',
      statusCode: 200,
    });
    resolve(results);
  });
  return promiseObj;
}
