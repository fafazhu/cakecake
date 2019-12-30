const express=require('express');
//引入数据库连接池模块
const pool=require('../pool.js')//../上一级  再上一级../../
//console.log(pool);
// 查询首页信息
let router=express.Router();
router.get("/info",(req,res)=>{
	pool.query("SELECT hid,hname,himg,products FROM cake_home",(err,result)=>{
        if(err) throw err;
        res.send(result);
	});
});
// http://127.0.0.1:4000/home/info


module.exports=router;
