// // app.js

// const express = require('express');
// const cors = require('cors');
// const dotenv = require('dotenv');
// const app = express();

// dotenv.config();

// app.use(cors());
// app.use(express.json());

// // ✅ Import the event routes
// const eventRoutes = require('./routes/eventRoutes');

// // ✅ Mount the route
// app.use('/api/events', eventRoutes);
// const dataRoutes = require('./routes/dataRoutes');
// app.use('/api', dataRoutes); // ✅ This line is essential


// // ✅ Test route (optional)
// app.get('/', (req, res) => {
//   res.send('API Root');
// });

// const PORT = process.env.PORT || 5000;
// app.listen(PORT, () => {
//   console.log(`Server is running on port ${PORT}`);
// });
// const express = require('express');
// const cors = require('cors');
// const dotenv = require('dotenv');
// dotenv.config();

// const app = express();
// app.use(cors());
// app.use(express.json());


// const PORT = process.env.PORT || 5000;
// app.listen(PORT, () => {
//   console.log(`Server running on http://localhost:${PORT}`);
// });
const express = require('express');
const cors = require('cors');
const dotenv = require('dotenv');
const dataRoutes = require('./routes/dataRoutes');

// Load environment variables from .env file
dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json()); // Parse JSON request bodies

// Routes
app.use('/api', dataRoutes);

// Default Route (optional)
app.get('/', (req, res) => {
  res.send('Rotaract Club Backend is Running 🚀');
});

// Server Start
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`✅ Server running at: http://localhost:${PORT}`);
});
