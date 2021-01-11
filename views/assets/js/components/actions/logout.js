// This event callback pushes its results into the results array and returns a promise.
// function logout(_options, params, _event, results) {
//   var promiseObj = new Promise(function(resolve) {
//     console.log('Auth0 logout called');
//     auth0.logout({
//       returnTo: "http://127.0.0.1:3000/logout"
//     });
//     results.push({
//       action: 'auth0.logout',
//       statusCode: 200,
//     });
//     resolve(results);
//   });
//   return promiseObj;
// }
