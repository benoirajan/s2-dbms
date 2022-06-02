> db.empl.insert({name:"Athul",salary:40000,role:"HR"})
WriteResult({ "nInserted" : 1 })
>  db.empl.insert({name:"Eldhose",salary:500000,role:"Developer"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({name:"Fathima",salary:50000,role:"HR"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({name:"Tom",salary:30000,role:"HR"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({name:"Gokul",salary:60000,role:"HR"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({name:"Joel",salary:20000,role:"HR"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({name:"Aswanth",salary:20000,role:"TB"})
WriteResult({ "nInserted" : 1 })
>
  
  
1 db.empl.find({name:/^A/}).pretty();
{
        "_id" : ObjectId("628df1f2fbf431a1eef5d8f5"),
        "name" : "Athul",
        "salary" : 40000,
        "role" : "HR"
}
{
        "_id" : ObjectId("628df3c9fbf431a1eef5d8fb"),
        "name" : "Aswanth",
        "salary" : 20000,
        "role" : "TB"
}


2 db.empl.find({name:/a$/}).pretty();
{
        "_id" : ObjectId("628df374fbf431a1eef5d8f7"),
        "name" : "Fathima",
        "salary" : 50000,
        "role" : "HR"
}

4 db.empl.update({name:"Athul"},{$inc:{salary:20000}});
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })

3db.empl.find({name:/u/})
"_id" : ObjectId("628df1f2fbf431a1eef5d8f5"), "name" : "Athul", "salary" : 64000, "role" : "HR" }
"_id" : ObjectId("628df39ffbf431a1eef5d8f9"), "name" : "Gokul", "salary" : 64000, "role" : "HR" }

5 db.empl.updateMany({},{$inc:{salary:4000}});
{ "acknowledged" : true, "matchedCount" : 7, "modifiedCount" : 7 }
> db.empl.find()
{ "_id" : ObjectId("628df1f2fbf431a1eef5d8f5"), "name" : "Athul", "salary" : 64000, "role" : "HR" }
{ "_id" : ObjectId("628df215fbf431a1eef5d8f6"), "name" : "Eldhose", "salary" : 504000, "role" : "Developer"
}
{ "_id" : ObjectId("628df374fbf431a1eef5d8f7"), "name" : "Fathima", "salary" : 54000, "role" : "HR" }
{ "_id" : ObjectId("628df385fbf431a1eef5d8f8"), "name" : "Tom", "salary" : 34000, "role" : "HR" }
{ "_id" : ObjectId("628df39ffbf431a1eef5d8f9"), "name" : "Gokul", "salary" : 64000, "role" : "HR" }
{ "_id" : ObjectId("628df3b4fbf431a1eef5d8fa"), "name" : "Joel", "salary" : 24000, "role" : "HR" }
{ "_id" : ObjectId("628df3c9fbf431a1eef5d8fb"), "name" : "Aswanth", "salary" : 24000, "role" : "TB" }


6> db.empl.update({name:"Gokul"},{$set:{remark:"WC"}});
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
