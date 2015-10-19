--用户表

db.users.insert({
username : "jack",
realname : "王小明",
password:"1"
})

--银行表
db.bankslocation.insert(
   {
      loc : { type: "Point", coordinates: [120.57936 , 29.99894 ] },
      bankname: "绍兴银行新建支行",
      address:"人民中路98",
      banktype : "绍兴银行",
      bankid:"test"
   }
)
db.bankslocation.insert(
   {
      loc : { type: "Point", coordinates: [120.580176, 30.00641 ] },
      bankname: "中国银行绍兴鉴湖支行",
      address:"胜利东路70",
      banktype : "绍兴银行",
      bankid:"test1"
   }
)

db.bankslocation.ensureIndex( { loc : "2dsphere" } )

var tdt_loadResult={"3.0.2":"searchversion","count":"1086","pois":
[{"phone":"","lonlat":"120.580176 30.00641","address":"胜利东路70","hotPointID":"9098218247C3074E","name":"中国银行绍兴鉴湖支行","url":""},
{"phone":"0575-85088253","lonlat":"120.577824 30.0126","address":"解放北路36","hotPointID":"C0B46404D5AC3FDB","name":"中国民生银行绍兴支行","url":""},
{"phone":"","lonlat":"120.57936 29.99894","address":"人民中路98","hotPointID":"81C6400763B6FA54","name":"绍兴银行新建支行","url":""},
{"phone":"","lonlat":"120.831944 29.58765","address":"一景路2号时代广场","hotPointID":"904E408462834649","name":"绍兴银行嵊州支行","url":""},{"phone":"","lonlat":"120.597864 30.09328","address":"浙江省绍兴市越城区","hotPointID":"C18205061074A864","name":"绍兴银行斗门支行","url":""},{"phone":"","lonlat":"120.552488 30.0082","address":"浙江省绍兴市越城区","hotPointID":"00DC60826765B16E","name":"绍兴银行西郊支行","url":""},{"phone":"","lonlat":"120.560224 30.01546","address":"马臻路126","hotPointID":"4008608426219FD9","name":"绍兴银行城西支行","url":""},{"phone":"","lonlat":"120.836728 30.08753","address":"","hotPointID":"5142608229C5E287","name":"绍兴银行滨海支行","url":""},{"phone":"","lonlat":"120.57664 29.98121","address":"解放南路1101","hotPointID":"41622401CB46F606","name":"绍兴银行鉴湖支行","url":""},{"phone":"","lonlat":"120.601208 30.07459","address":"袍江工业区育贤路111-119号","hotPointID":"10520103A016D640","name":"绍兴银行江滨支行","url":""}],"resultType":1,"dataversion":"2014-9-4 16:14:14","landmarkcount":0,"prompt":[{"admins":[{"name":"绍兴市","adminCode":156330600}],"type":4}],"mclayer":"","keyWord":"绍兴银行支行","engineversion":"20140513"};