const express = require('express');
const router = express.Router();
const controller = require('../controllers/dataController');

router.get('/members', controller.getMembers);
router.get('/events', controller.getEvents);
router.get('/media', controller.getMedia);
router.get('/donations', controller.getDonations);
router.get('/announcements', controller.getAnnouncements);

module.exports = router;
