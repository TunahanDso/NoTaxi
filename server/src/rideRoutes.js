const express = require('express');
const router = express.Router();

// POST /api/ride
router.post('/ride', (req, res) => {
  console.log('Ride data received:', req.body);
  return res.status(200).json({ message: 'Ride data logged' });
});

module.exports = router;
