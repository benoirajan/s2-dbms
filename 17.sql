17-5-22 tue
> use C
switched to db C
> db.empl.insert({name:"dsflkj",salary:40000,role:"KP"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({name:"dghjlksfsj",salary:60000,role:"KP"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({name:"sfsdfskjuhdj",salary:100000,role:"HR"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({name:"Alan",salary:200000,role:"HR"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({name:"Eldhose",salary:500000,role:"Developer"})
WriteResult({ "nInserted" : 1 })
> db.empl.find().pretty()
{
        "_id" : ObjectId("62833f41c0626801780ceb4a"),
        "name" : "dsflkj",
        "salary" : 40000,
        "role" : "KP"
}
{
        "_id" : ObjectId("62833fa0c0626801780ceb4b"),
        "name" : "dghjlksfsj",
        "salary" : 60000,
        "role" : "KP"
}
{
        "_id" : ObjectId("62833fbdc0626801780ceb4c"),
        "name" : "sfsdfskjuhdj",
        "salary" : 100000,
        "role" : "HR"
}
{
        "_id" : ObjectId("62833fcdc0626801780ceb4d"),
        "name" : "Alan",
        "salary" : 200000,
        "role" : "HR"
}
{
        "_id" : ObjectId("62833fe5c0626801780ceb4e"),
        "name" : "Eldhose",
        "salary" : 500000,
        "role" : "Developer"
}
>
