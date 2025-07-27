const db = require('../models/db');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

exports.loginUser = (req, res) => {
  const { username, password } = req.body;
  db.query('SELECT * FROM users WHERE username = ?', [username], (err, results) => {
    if (err) return res.status(500).json(err);
    if (results.length === 0) return res.status(404).json({ msg: 'User not found' });

    const user = results[0];
    bcrypt.compare(password, user.password_hash, (err, isMatch) => {
      if (!isMatch) return res.status(401).json({ msg: 'Invalid credentials' });

      const token = jwt.sign(
        { user_id: user.user_id, role_id: user.role_id },
        process.env.JWT_SECRET,
        { expiresIn: '2h' }
      );

      res.json({ token, role_id: user.role_id });
    });
  });
};
