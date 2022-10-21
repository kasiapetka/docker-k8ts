const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send(`
    <h1>Hello from this NodeJS app!!!!</h1>
    <h2>Liveness probes determine whether or not an application running in a container is in a healthy state.!</h2>
    <h2>Liveness probes determine whether or not an application running in a container is in a healthy state.!</h2>

    <p>Try sending a request to /error and see what happens</p>
  `);
});

app.get('/error', (req, res) => {
  process.exit(1);
});

app.listen(8080);
