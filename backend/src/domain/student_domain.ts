import { studentmodel } from "../model/student";
import express, { Express, Request, Response } from "express";

class StudentDomain {
    async getAllStudent(req: Request, res: Response) {
        var studentData = await studentmodel.find();
        if (studentData.length == 0) {
            res.send([])
        } else {
            res.send(studentData);
        }

    }

    async deleteStudent(req: Request, res: Response) {

        console.log(req.params.EmpId)
        var deletedata: any = await studentmodel.findOne({ EmpId: parseInt(req.params.EmpId) });
        if (deletedata == null) {
            res.send("No emp found")
        } else {
            await studentmodel.deleteOne({ EmpId: parseInt(req.params.EmpId) }).then((success: any) => {
                res.send('success deleted')
                res.end();
            })

        }
    }

    async addStudent(req: Request, res: Response) {
        console.log(req.body);
        var data = new studentmodel(req.body);
        try {
            await data.save();
            res.send("data added")
        }
        catch (err: any) {
            res.send(err.message);
        }
    }

    // async updateStudent(req: Request, res :Response){
    //     console.log("hy");
    //     let data = req.body
    //     const isAvail = await studentmodel.findOne({EmpId : data.EmpId});
    //     if(isAvail ){

    //     }
    //     res.send(isAvail)
    // }

    async updateStudent(req: Request, res: Response) {

        try {

            var data = req.body;

            console.log(data);

            await studentmodel.updateOne({ EmpId: data.EmpId },

                { $set: { FirstName: data.FirstName, LastName: data.LastName } })

            res.send('update saved success');

            res.end();

        } catch (e: any) {

            res.send(e.message);

            res.end();

        }

    }
}

export { StudentDomain };