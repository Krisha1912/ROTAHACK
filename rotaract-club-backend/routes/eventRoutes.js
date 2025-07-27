const express = require('express');
const router = express.Router();
const eventController = require('../controllers/eventController');
const auth = require('../middleware/authMiddleware');
const authorize = require('../middleware/roleMiddleware');

// Public
//router.get('/', eventController.getAllEvents);
// ✅ This is the GET /api/events route
router.get('/', (req, res) => {
  res.send('Events API is working!');
});


// Admin/Core/BOD can create events
router.post('/create', auth, authorize(3, 4, 5), eventController.createEvent);

module.exports = router;
// routes/eventRoutes.js


// const express = require('express');
// const router = express.Router(); // ✅ Define router first

// // Dummy GET route to test
// router.get('/', (req, res) => {
//   res.json({
//     message: 'Events route is working!',
//     events: [
//       {
//         id: 1,
//         title: 'Tree Plantation Drive',
//         date: '2025-08-01',
//         location: 'Ahmedabad',
//         description: 'Planting 100 trees with volunteers.'
//       },
//       {
//         id: 2,
//         title: 'Blood Donation Camp',
//         date: '2025-08-15',
//         location: 'LJ Campus',
//         description: 'Donors from the city and colleges.'
//       }
//     ]
//   });
// });

// module.exports = router; // ✅ Export router at the end

// const express = require('express');
// const router = express.Router();

// // Route: GET /api/events
// router.get('/', (req, res) => {
//   res.json({
//     message: 'Events route is working!',
//     events: [
//       {
//         id: 1,
//         title: 'Tree Plantation Drive',
//         date: '2025-08-01',
//         location: 'Ahmedabad',
//         description: 'Planting 100 trees with volunteers.',
//       },
//       {
//         id: 2,
//         title: 'Blood Donation Camp',
//         date: '2025-08-15',
//         location: 'LJ Campus',
//         description: 'Donors from the city and colleges.',
//       }
//     ]
//   });
// });

// module.exports = router;
// const express = require('express');
// const router = express.Router();

// // Route: GET /api/events
// router.get('/', (req, res) => {
//   res.json({
//     message: 'Events route is working!',
//     events: [
//       {
//         id: 1,
//         title: 'Tree Plantation Drive',
//         date: '2025-08-01',
//         location: 'Ahmedabad',
//         description: 'Planting 100 trees with volunteers.',
//       },
//       {
//         id: 2,
//         title: 'Blood Donation Camp',
//         date: '2025-08-15',
//         location: 'LJ Campus',
//         description: 'Donors from the city and colleges.',
//       }
//     ]
//   });
// });

// module.exports = router;
