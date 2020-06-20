var express = require('express');
var app = express()




app.get("/",function(req,res){
	res.send("hello guys welcome to kubernetes");
})





app.listen(3000,function(){
	console.log("server started")
})