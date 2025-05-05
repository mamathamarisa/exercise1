namespace employee.travel.model;
using{ cuid, managed} from '@sap/cds/common';
type commonType : String(30);
type Suggestion : String(10);

entity Employee: cuid,managed {
    key name : commonType @title : 'Name';
    address: commonType @title : 'Address';
    department: commonType  @title : 'Department';
     email : commonType @title : 'EMAIL';
     request : Composition of many TravelRequest on request.employee=$self;

}
entity TravelRequest : cuid{
     destination : commonType;
     Startdate : Date;
     Enddate : Date;
     reason : commonType @title :'{i18n>reason}';
     status : Suggestion @title :'{i18n>status}';
     employee :Association to Employee;
     Mapproval: Association to ManagerApproval ;
}
entity ManagerApproval : cuid {
    Key name : commonType;
    Decision : localized Suggestion;
    Comments : commonType;
}
