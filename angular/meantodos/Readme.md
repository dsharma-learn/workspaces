
README.md

# TODO App built on MEAN stack


- We will be building todo list app using MEAN stack (mongoDb, ExpressJS, Angular and Node JS)

- For MongoDB, we will create a free account at mlab 


Express is a NodeJS based web framework to help working with MongoDB etc. For building reliable fast web applications


Steps: 
1. Create Package JSON with appropriate Dependencies 
	- create folder (say meantodos)
		- do npm init
	- install express, mongojs (orm to work with mongo), ejs (templates - embedded javascript) and body-parser: 
		npm install express mongojs ejs body-parser -- save
	- Setup Server:
        - create server.js defineing view engine, body parser and routes.
        - create routes and views folders 
        - in routes, create index.js and todo.js 
        - start using : node server 




Install bower: npm install bower -g
Then create .bowerrc and set "directory" to client/bower_components
Then install bootstrap: bower install bootstrap --save