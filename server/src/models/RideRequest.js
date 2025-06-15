const mongoose = require('../db');

const RideRequestSchema = new mongoose.Schema({
  origin: { type: String, required: true },
  destination: { type: String, required: true },
  time: { type: String, required: true },
  seatCount: { type: Number, required: true },
});

module.exports = mongoose.model('RideRequest', RideRequestSchema);
