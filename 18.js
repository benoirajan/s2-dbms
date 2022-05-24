{
        "_id" : ObjectId("628c61779a4cc3654848cfd7"),
        "title" : "The Hobbit: The battle of five armies",
        "writer" : "J.R.R. Tolkein",
        "year" : "2012",
        "franchise" : "The Hobbit",
        "synopsis" : "Bilbo and COmpany are force3d o engage in war against an array if cimnbatants and keep
 the Lonely Mountain"
}
> db.movieDetails.insert({title:"Avatar"})
WriteResult({ "nInserted" : 1 })
> db.movieDetails.find().pretty()
{
        "_id" : ObjectId("628c5e0e9a4cc3654848cfd3"),
        "title" : "Fight Club",
        "writer" : "Chuck Palahnuik",
        "year" : "1999",
        "actors" : [
                "Brad Pitt",
                "Edward Norton"
        ]
}
{
        "_id" : ObjectId("628c5f049a4cc3654848cfd4"),
        "title" : "Pulp fiction",
        "writer" : "Quentin Tarantino",
        "year" : "1994",
        "actors" : [
                "John Travolta",
                "Uma Thurman"
        ]
}
{
        "_id" : ObjectId("628c5f6b9a4cc3654848cfd5"),
        "title" : "Inglorous Bastards",
        "writer" : "Quentin Tarantino",
        "year" : "2009",
        "actors" : [
                "Brad Pitt",
                "Diane Kruger"
        ]
}
{
        "_id" : ObjectId("628c60319a4cc3654848cfd6"),
        "title" : "The Hobbit: An Unexpected Journey",
        "writer" : "J.R.R. Tolkein",
        "year" : "2012",
        "franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("628c61779a4cc3654848cfd7"),
        "title" : "The Hobbit: The battle of five armies",
        "writer" : "J.R.R. Tolkein",
        "year" : "2012",
        "franchise" : "The Hobbit",
        "synopsis" : "Bilbo and COmpany are force3d o engage in war against an array if cimnbatants and keep
 the Lonely Mountain"
}
{ "_id" : ObjectId("628c62049a4cc3654848cfd8"), "title" : "Avatar" }
> db.movieDetails.remove({title:"Avatar"})
WriteResult({ "nRemoved" : 1 })
> db.movieDetails.find().pretty()
{
        "_id" : ObjectId("628c5e0e9a4cc3654848cfd3"),
        "title" : "Fight Club",
        "writer" : "Chuck Palahnuik",
        "year" : "1999",
        "actors" : [
                "Brad Pitt",
                "Edward Norton"
        ]
}
{
        "_id" : ObjectId("628c5f049a4cc3654848cfd4"),
        "title" : "Pulp fiction",
        "writer" : "Quentin Tarantino",
        "year" : "1994",
        "actors" : [
                "John Travolta",
                "Uma Thurman"
        ]
}
{
        "_id" : ObjectId("628c5f6b9a4cc3654848cfd5"),
        "title" : "Inglorous Bastards",
        "writer" : "Quentin Tarantino",
        "year" : "2009",
        "actors" : [
                "Brad Pitt",
                "Diane Kruger"
        ]
}
{
        "_id" : ObjectId("628c60319a4cc3654848cfd6"),
        "title" : "The Hobbit: An Unexpected Journey",
        "writer" : "J.R.R. Tolkein",
        "year" : "2012",
        "franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("628c61779a4cc3654848cfd7"),
        "title" : "The Hobbit: The battle of five armies",
        "writer" : "J.R.R. Tolkein",
        "year" : "2012",
        "franchise" : "The Hobbit",
        "synopsis" : "Bilbo and COmpany are force3d o engage in war against an array if cimnbatants and keep
 the Lonely Mountain"
}
> db.movieDetails.insert({title:"Avatar"})
WriteResult({ "nInserted" : 1 })
> db.movieDetails.update({title:"Avatar"}{$set:{writer:"James Camaroon"}})
2022-05-24T10:26:14.834+0530 E QUERY    [thread1] SyntaxError: missing ) after argument list @(shell):1:39

> db.movieDetails.update({title:"Avatar"},{$set:{writer:"James Camaroon"}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.movieDetails.find().pretty()
{
        "_id" : ObjectId("628c5e0e9a4cc3654848cfd3"),
        "title" : "Fight Club",
        "writer" : "Chuck Palahnuik",
        "year" : "1999",
        "actors" : [
                "Brad Pitt",
                "Edward Norton"
        ]
}
{
        "_id" : ObjectId("628c5f049a4cc3654848cfd4"),
        "title" : "Pulp fiction",
        "writer" : "Quentin Tarantino",
        "year" : "1994",
        "actors" : [
                "John Travolta",
                "Uma Thurman"
        ]
}
{
        "_id" : ObjectId("628c5f6b9a4cc3654848cfd5"),
        "title" : "Inglorous Bastards",
        "writer" : "Quentin Tarantino",
        "year" : "2009",
        "actors" : [
                "Brad Pitt",
                "Diane Kruger"
        ]
}
{
        "_id" : ObjectId("628c60319a4cc3654848cfd6"),
        "title" : "The Hobbit: An Unexpected Journey",
        "writer" : "J.R.R. Tolkein",
        "year" : "2012",
        "franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("628c61779a4cc3654848cfd7"),
        "title" : "The Hobbit: The battle of five armies",
        "writer" : "J.R.R. Tolkein",
        "year" : "2012",
        "franchise" : "The Hobbit",
        "synopsis" : "Bilbo and COmpany are force3d o engage in war against an array if cimnbatants and keep
 the Lonely Mountain"
}
{
        "_id" : ObjectId("628c64ab9a4cc3654848cfd9"),
        "title" : "Avatar",
        "writer" : "James Camaroon"
}
> db.movieDetails.update({title:"Avatar"},{$set:{a:"James Camaroon",b:1212}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.movieDetails.find().pretty()
{
        "_id" : ObjectId("628c5e0e9a4cc3654848cfd3"),
        "title" : "Fight Club",
        "writer" : "Chuck Palahnuik",
        "year" : "1999",
        "actors" : [
                "Brad Pitt",
                "Edward Norton"
        ]
}
{
        "_id" : ObjectId("628c5f049a4cc3654848cfd4"),
        "title" : "Pulp fiction",
        "writer" : "Quentin Tarantino",
        "year" : "1994",
        "actors" : [
                "John Travolta",
                "Uma Thurman"
        ]
}
{
        "_id" : ObjectId("628c5f6b9a4cc3654848cfd5"),
        "title" : "Inglorous Bastards",
        "writer" : "Quentin Tarantino",
        "year" : "2009",
        "actors" : [
                "Brad Pitt",
                "Diane Kruger"
        ]
}
{
        "_id" : ObjectId("628c60319a4cc3654848cfd6"),
        "title" : "The Hobbit: An Unexpected Journey",
        "writer" : "J.R.R. Tolkein",
        "year" : "2012",
        "franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("628c61779a4cc3654848cfd7"),
        "title" : "The Hobbit: The battle of five armies",
        "writer" : "J.R.R. Tolkein",
        "year" : "2012",
        "franchise" : "The Hobbit",
        "synopsis" : "Bilbo and COmpany are force3d o engage in war against an array if cimnbatants and keep
 the Lonely Mountain"
}
{
        "_id" : ObjectId("628c64ab9a4cc3654848cfd9"),
        "title" : "Avatar",
        "writer" : "James Camaroon",
        "a" : "James Camaroon",
        "b" : 1212
}
> db.movieDetails.insert({title:'War dogs'})
WriteResult({ "nInserted" : 1 })
> db.movieDetails.find().pretty()
{
        "_id" : ObjectId("628c5e0e9a4cc3654848cfd3"),
        "title" : "Fight Club",
        "writer" : "Chuck Palahnuik",
        "year" : "1999",
        "actors" : [
                "Brad Pitt",
                "Edward Norton"
        ]
}
{
        "_id" : ObjectId("628c5f049a4cc3654848cfd4"),
        "title" : "Pulp fiction",
        "writer" : "Quentin Tarantino",
        "year" : "1994",
        "actors" : [
                "John Travolta",
                "Uma Thurman"
        ]
}
{
        "_id" : ObjectId("628c5f6b9a4cc3654848cfd5"),
        "title" : "Inglorous Bastards",
        "writer" : "Quentin Tarantino",
        "year" : "2009",
        "actors" : [
                "Brad Pitt",
                "Diane Kruger"
        ]
}
{
        "_id" : ObjectId("628c60319a4cc3654848cfd6"),
        "title" : "The Hobbit: An Unexpected Journey",
        "writer" : "J.R.R. Tolkein",
        "year" : "2012",
        "franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("628c61779a4cc3654848cfd7"),
        "title" : "The Hobbit: The battle of five armies",
        "writer" : "J.R.R. Tolkein",
        "year" : "2012",
        "franchise" : "The Hobbit",
        "synopsis" : "Bilbo and COmpany are force3d o engage in war against an array if cimnbatants and keep
 the Lonely Mountain"
}
{
        "_id" : ObjectId("628c64ab9a4cc3654848cfd9"),
        "title" : "Avatar",
        "writer" : "James Camaroon",
        "a" : "James Camaroon",
        "b" : 1212
}
{ "_id" : ObjectId("628c6b7a9a4cc3654848cfda"), "title" : "War dogs" }
>
