const { query } = require('express');
const express = require('express');
const connection = require('../connection');
const router = express.Router();
var auth = require ('../services/authentication');
var checkRole = require ('../services/checkRole');


router.post('/add',(req,res,next)=>{
    let category = req.body;
    console.log(category.name);
    qur = "insert into category (name) values( ? )";
    connection.query(qur,[category.name],(err, results)=>{
       if(!err){
        return res.status(200).json({message: "Category Added Successfully"});
       } 
       else{
        // console.log(err);
        return res.status(500).json(err);
       }
    })
})


router.get('/get',auth.authenticateToken, (req,res, next)=>{
    var query = "select * from category order by name";
    connection.query(query,(err,results)=>{
        if(!err){
            return res.status(200).json(results);
        }
        else{
            return res.status(500).json(err);
        }
    })
})


router.patch('/update',auth.authenticateToken,checkRole.checkRole,(req,res,next)=>{
    let product = req.body;
    var query = "update category set name=? where id=?";
    connection.query(query,[product.name,product.id],(err,results)=>{
        if(!err){
            if(results.affectedRows == 0){
              return res.status(400).json({message: "Category id does not found"});  
            }
            return res.status(200).json({message: "Category Update Successfully"});
        }
        else{
            return res.status(500).json(err);
        }
    })
})


module.exports = router;


