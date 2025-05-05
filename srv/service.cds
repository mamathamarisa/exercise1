using { employee.travel.model as emp } from '../db/schema';

service Employeeservice{
    entity  Employee  as projection on emp.Employee;
    entity  TravelRequest as projection on emp.TravelRequest;
    entity  ManagerApproval as projection on emp.ManagerApproval
    }