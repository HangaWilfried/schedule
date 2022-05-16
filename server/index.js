const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();

app.use(bodyParser.json());
app.use(cors());

const student = require("./api/student");
const teacher = require("./api/teacher");
app.use("/student", student);
app.use("/teacher", teacher);


const port = process.env.PORT || 5500;
app.listen(port, ()=>console.log(`server started at port ${port}`));