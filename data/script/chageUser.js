/*
 * @Author: shangyameng
 * @Email: shangyameng@aliyun.com
 * @Date: 2020-05-25 14:26:00
 * @LastEditTime: 2020-05-25 23:12:34
 * @FilePath: /leanoteByDocker/data/script/chageUser.js
 */ 

var url = "mongodb://127.0.0.1:27017/leanote";
var db = connect(url);
printjson(db.users.update({"Email" :"admin@leanote.com"},{$set:{"Email":"shangyameng@aliyun.com"}}));

printjson(db.users.update({"Username" : "admin"},{$set:{"Username" : "superadmin"}}));

