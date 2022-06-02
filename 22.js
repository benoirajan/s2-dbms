db.createUser({user:"beno",pwd:"123",roles:[{role:"userAdminAnyDatabase",db:"admin"}]})
Successfully added user: {
        "user" : "beno",
        "roles" : [
                {
                        "role" : "userAdminAnyDatabase",
                        "db" : "admin"
                }
        ]
}

> db.createUser({user:"beno",pwd:"123",roles:[{role:"read",db:"movie"},{role:"readWrite",db:"emplo
yee"}]})
Successfully added user: {
        "user" : "beno",
        "roles" : [
                {
                        "role" : "read",
                        "db" : "movie"
                },
                {
                        "role" : "readWrite",
                        "db" : "employee"
                }
        ]
}

> db.createUser({user:"beno",pwd:"123",roles:[{role:"userAdmin",db:"admin"}]})
Successfully added user: {
        "user" : "beno",
        "roles" : [
                {
                        "role" : "userAdmin",
                        "db" : "admin"
                }
        ]
}
