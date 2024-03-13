// Require the express module
const express = require('express');
// Create an express application
const app = express();
// Define the port. Use the environment variable PORT if it's available; otherwise, use 3001.
const port = process.env.PORT || 3001;

// Define a route for GET requests to the root URL ("/")
app.get('/', (req, res) => {
  // Send a response containing a message
  res.send('Hello from App2!');
});

// Define a route for GET requests to "/api2"
app.get('/api2', (req, res) => {
  // Send a response specific to api2
  res.send('Response from API2 endpoint');
});

// Start the application, listening on the defined port
app.listen(port, () => {
  // Log a message to the console once the application starts listening
  console.log(`App2 listening on port ${port}`);
});

