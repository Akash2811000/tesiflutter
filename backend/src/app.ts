import express ,{Express,Request,Response} from  'express'
import mongoose  from 'mongoose';
import * as dotenv from 'dotenv';
const app:Express = express();
dotenv.config();
const port = process.env.PORT;

const connection = mongoose.connect('mongodb://localhost:27017/tsapi')

import {router as studentRoute} from '../src/contoller/student_controller'
app.use(express.json())
app.get('/', (req: Request , res : Response) => {
    res.send("Hello");
    res.end();
})
app.use ('/student', studentRoute);

app.listen(port, () => {
    console.log(`⚡️[server]: Server is running at ${port}`);
});
