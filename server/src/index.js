const express = require('express');
const rideRoutes = require('./rideRoutes');

const app = express();

// JSON parse middleware
app.use(express.json());

// register routes under /api
app.use('/api', rideRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});
