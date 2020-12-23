// This event callback pushes its results into the results array and returns a promise.
function logout(_options, params, _event, results) {
  var promiseObj = new Promise(function(resolve) {
    console.log('Auth0 logout called');
    auth0.logout({
      returnTo: window.location.origin
    });
    results.push({
      action: 'action',
      statusCode: 200,
    });
    resolve(results);
  });
  return promiseObj;
}
