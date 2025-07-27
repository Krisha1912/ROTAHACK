const db = require('../models/db');

exports.getAllEvents = (req, res) => {
  db.query('SELECT * FROM events ORDER BY event_date DESC', (err, results) => {
    if (err) return res.status(500).json(err);
    res.json(results);
  });
};

exports.createEvent = (req, res) => {
  const { title, description, event_date, location } = req.body;
  const created_by = req.user.user_id;
  db.query('INSERT INTO events (title, description, event_date, location, created_by) VALUES (?, ?, ?, ?, ?)',
    [title, description, event_date, location, created_by],
    (err, result) => {
      if (err) return res.status(500).json(err);
      res.json({ msg: 'Event created successfully', event_id: result.insertId });
    });
};
