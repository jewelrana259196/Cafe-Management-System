
const { query } = require('express');
const express = require('express');
const connection = require('../connection');
const router = express.Router();

const jwt = require('jsonwebtoken');
const nodemailer = require('nodemailer');
require('dotenv').config();
var auth = require('../services/authentication');
var checkRole = require('../services/checkRole');


router.post('/signup', (req, res) => {
    let user = req.body;
    var query = " select email, password,role,status from user where email=?"
    connection.query(query, [user.email], (err, results) => {
        if (!err) {
            if (results.length <= 0) {
                debugger;
                query = "insert into user (name,contactNumber,email,password,status,role) values(?,?,?,?,'false','user')"
                connection.query(query, [user.name, user.contactNumber, user.email, user.password], (err, results) => {
                    if (!err) {
                        return res.status(200).json({ message: "Successfully Registered" });
                    }
                    else {
                        return res.status(500).json(err);
                    }
                })

            }
            else {
                return res.status(400).json({ message: "Emaily Already Exist." });

            }
        }

        else {
            return res.status(500).json(err);
        }
    })
})

router.post('/login', (req, res) => {
    const users = req.body;
    console.log(users.email);
    let quer = "select * from user where email = ?  ";
    connection.query(quer, [users.email], (err, results) => {
        if (!err) {
            if (results.length <= 0 || results[0].password != users.password) {
                return res.status(401).json({ message: "Incorrect Username of password" });
            }
            else if (results[0].status === 'false') {
                return res.status(401).json({ message: "wait for admin Approval" });
            }
            else if (results[0].password == users.password) {
                const response = { email: results[0].email, role: results[0].role }
                const accessToken = jwt.sign(response, process.env.ACCESS_TOKEN, { expiresIn: '8h' })
               return res.status(200).json({ token: accessToken , message: "Success"});
                // return res.status(200).json({ message: "Success" });

            }
            else {
                return res.status(400).json({ message: "Something went wrong.Please try again later" });
            }
        }

        else {
            return res.status(500).json("aita" + err);
        }
    })
})

var transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: process.env.EMAIL,
        pass: process.env.password
    }
})

router.post('/forgotPassword', (req, res) => {
    const users = req.body;
    let quer = "select email,password from user where email=?";
    connection.query(quer, [users.email], (err, results) => {
        if (!err) {
            if (results.length <= 0) {
                return res.status(200).json({ message: "Passwored sent sussessfully to your email." });
            }
            else {
                var mailOptions = {
                    from: process.env.EMAIL,
                    to: results[0].email,
                    subject: 'Passsword by Cafe Management System',
                    html: '<p><b>Your login details for cafe Management System </b><br><b>Email:</b>' + results[0].email + '<br><b>Password: </b>' + results[0].password + '<br><a href="http://localhost: 4200/">Click here to login</a></p>'
                };
                transporter.sendMail(mailOptions, function (error, info) {
                    if (error) {
                        console.log(error);
                    }
                    else {
                        console.log('Email sent:' + info.response);
                    }
                });
                return res.status(200).json({ message: "Passwored sent sussessfully to your email." });
            }
        }
        else {
            return res.status(500).json(err);
        }
    })
})

router.get('/get', auth.authenticateToken, checkRole.checkRole, (req, res) => {
    var query = "select id, name,email, contactNumber, status from user where role = 'user'";
    connection.query(query, (err, results) => {
        if (!err) {
            return res.status(200).json(results);
        }
        else {
            return res.status(500).json(err);
        }
    })
})

router.patch('/update', auth.authenticateToken, checkRole.checkRole, (req, res) => {
    let user = req.body;
    var query = "update user set status=? where id=?";
    connection.query(query, [user.status, user.id], (err, results) => {
        if (!err) {
            if (results.affectedRows == 0) {
                return res.status(400).json({ message: "User id does not exist" });
            }
            return res.status(200).json({ message: "User Update Successfully" });
        }
        else {
            return res.status(500).json(err);
        }
    })
})

router.get('/checkToken', auth.authenticateToken, (req, res) => {

    return res.status(200).json({ message: "true" });
})

router.post('/changePassword', auth.authenticateToken, (req, res) => {
    const user = req.body;
    const email = res.locals.email;
    console.log(email);
    var query = "select * from user where email=? and password =?";
    connection.query(query, [email, user.oldPassword], (err, results) => {
        if (!err) {
            if (results.length <= 0) {
                return res.status(400).json({ message: "Incorrect Old Password" });
            }
            else if (results[0].password == user.oldPassword) {
                query = "UPDATE user set password=? where email=?";
                connection.query(query, [user.newPassword, email], (err, results) => {
                    if (!err) {
                        return res.status(200).json({ message: "Password Updated Successfully" })
                    }
                    else {
                        return res.status(500).json(err);
                    }
                })
            }
            else {
                return res.status(400).json({ message: "Something went wrong. Please try again leater" });
            }
        }
        else {
            return res.status(500).json(err);
        }
    })
})




module.exports = router;