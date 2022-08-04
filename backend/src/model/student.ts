import mongoose from "mongoose";

const StudentSchema = new mongoose.Schema({

    EmpId : {type : Number , require : true},
    FirstName : {type : String , require : true},
    LastName : {type : String , require : true},
    Assignments : [
        {
            AssignmentId : { type : Number , require : true},
            AssignmentCategory : { type : String },
            AssignmentName : { type : String },
            AssignmentStatus : { type : String },
        }
    ]


})

const studentmodel = mongoose.model('students',StudentSchema);
export {studentmodel};