require('dotenv').config()
const { response } = require('express');
const jwt = require('jsonwebtoken');

function authenticateToken(req,res,next){
    const  authHeadar = req.headers['authorization']
    const token = authHeadar && authHeadar.split(' ')[1]
    if (token == null)
    return res.sendStatus(401);

    jwt.verify(token,process.env.ACCESS_TOKEN,(err, response) =>{
        if (err)
                return res.sendStatus(403);
                res.locals = response;
                next()
    })
}


module.exports = {authenticateToken: authenticateToken}