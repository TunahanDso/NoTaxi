const express = require('express');
require('./db');
const RideRequest = require('./models/RideRequest');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

app.post('/api/ride', async (req, res) => {
  try {
    const rideRequest = new RideRequest(req.body);
    const savedRide = await rideRequest.save();
    res.status(201).json(savedRide);
  } catch (err) {
    res.status(400).json({ error: err.message });
  }
});

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});
