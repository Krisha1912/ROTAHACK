const db = require('../models/db');

exports.getMembers = (req, res) => {
  db.query('SELECT * FROM members', (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
};

exports.getEvents = (req, res) => {
  db.query('SELECT * FROM events', (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
};

exports.getMedia = (req, res) => {
  db.query('SELECT * FROM media', (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
};

exports.getDonations = (req, res) => {
  db.query('SELECT * FROM donations', (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
};

exports.getAnnouncements = (req, res) => {
  db.query('SELECT * FROM announcements', (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
};
// const db = require('../models/db');

// // Get all members
// exports.getMembers = (req, res) => {
//   db.query('SELECT * FROM members', (err, results) => {
//     if (err) return res.status(500).json({ error: err });
//     res.json(results);
//   });
// };

// // Get all events
// exports.getEvents = (req, res) => {
//   db.query('SELECT * FROM events', (err, results) => {
//     if (err) return res.status(500).json({ error: err });
//     res.json(results);
//   });
// };

// // Get all media
// exports.getMedia = (req, res) => {
//   db.query('SELECT * FROM media', (err, results) => {
//     if (err) return res.status(500).json({ error: err });
//     res.json(results);
//   });
// };

// // Get all donations
// exports.getDonations = (req, res) => {
//   db.query('SELECT * FROM donations', (err, results) => {
//     if (err) return res.status(500).json({ error: err });
//     res.json(results);
//   });
// };

// // Get all announcements
// exports.getAnnouncements = (req, res) => {
//   db.query('SELECT * FROM announcements ORDER BY date DESC', (err, results) => {
//     if (err) return res.status(500).json({ error: err });
//     res.json(results);
//   });
// };
