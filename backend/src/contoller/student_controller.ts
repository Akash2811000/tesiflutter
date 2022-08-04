import { StudentDomain } from "../domain/student_domain";
import express, {Express, Request, Response} from 'express';
var router = express.Router();

class StudentController {
    static async getAllStudent (req: Request , res : Response){
        const studentdomain = new StudentDomain();
        await studentdomain.getAllStudent(req,res);
    }

    static async deleteStudent (req: Request , res : Response){
        const studentdomain = new StudentDomain();
        await studentdomain.deleteStudent(req,res);
    }

    static async addStudent (req: Request , res : Response){
        const studentdomain = new StudentDomain();
        await studentdomain.addStudent(req,res);
    }

    static async updateStudent (req: Request , res : Response){
        const studentdomain = new StudentDomain();
        await studentdomain.updateStudent(req,res);
    }

}

router.get('/', StudentController.getAllStudent);
router.delete('/:EmpId', StudentController.deleteStudent);
router.post('/', StudentController.addStudent);
router.put('/', StudentController.updateStudent);
export {router}