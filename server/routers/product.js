const express=require('express');
const pool=require('../pool.js');
let router=express.Router();
// 类别列表
router.get('/type',function(req,res){
	let tid=req.query.tid;
	pool.query('SELECT img,title FROM cake_type WHERE tid=?',[tid],(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});
// http://127.0.0.1:4000/product/type?tid=1


//商品列表
router.get('/list',function(req,res){
	var ptype=req.query.ptype;
	// if(!obj.pno || obj.pno<=0){
	// 	obj.pno=1;
	// }
	// if(!obj.count){
	// 	obj.count=2;
	// }
	// let start=(parseInt(obj.pno)-1)*parseInt(obj.count);
	// obj.count=parseInt(obj.count);
	pool.query('SELECT pid,img,title,price,tag,typeimg FROM cake_list WHERE ptype=?',[ptype],function(err,result){
		if(err) throw err;
		res.send(result);
	});
});
// http://127.0.0.1:4000/product/list?ptype=1


module.exports=router;