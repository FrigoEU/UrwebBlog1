// server.ts
import * as express from "express";
let app = express();

app.get("/users", (req, res) => {
    res.send({id: 1, userName: “Simon”});
});

// client.ts
fetch(“/users”).then(users => users.forEach(u => console.log(u.firstName)));

// prints undefined, the property is called userName



// server.ts
const pgp = require('pg-promise')();
const db = pgp('postgres://postgres@localhost:5432/blog');

let q = 'select userName from users'
db.each(q, [], users => users.forEach(u => console.log(u.firstName));
);
// prints undefined, the property is called userName



// client.ts
import React from 'react';

ReactDOM.render(
    React.createElement(h1, null, "Hello World"), 
    document.getElementById('content')
)

// server.ts
const myValue = anUnknownFunction();

// Thankfully, typescript can tell me what type myValue has.
// But, does anUnknownFunction have side effects? Can I call this twice and expect the same result?
// I can't tell without inspecting its source code.
