using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using HRS_CaseStudy_2.BusinessEntity;
using HRS_CaseStudy_2.Manager;

namespace HRS_CaseStudy_2.Controller
{
    public class ProjectController
    {
        EmployeeManager pmg;
        public ProjectController()
        {

        }
        int uID;

        public ProjectController(int createdBy)
        {
            this.uID = createdBy;
            pmg = new EmployeeManager(createdBy);
        }

        public bool CreateProject(string projectName,string projectDesc,string client,DateTime startDate,DateTime endDate,int createdBy)
        {
            EmployeeManager mgr = new EmployeeManager(createdBy);
            ProjectInfo prInf = new ProjectInfo();

            prInf.ProjectName=projectName;
            prInf.ProjectDescription=projectDesc;
            prInf.Client=client;
            prInf.StartDate=startDate;
            prInf.EndDate=endDate;
            prInf.CreatedBy = createdBy;
            
            return mgr.CreateProject(prInf);

        }

        public DataSet SearchProjectByName(string pName,int uId)
        {
            ProjectInfo prInf = new ProjectInfo();
            EmployeeManager mgr = new EmployeeManager(uId);
            prInf.ProjectName = pName;
            return mgr.SearchProjectByName(pName,uId);

        }
        public ProjectInfo SearchProjectByPK(int ProjId)
        {
            ProjectInfo prInf = new ProjectInfo();
            EmployeeManager mgr = new EmployeeManager(uID);
            prInf.ProjectId = ProjId;
            return mgr.SearchProjectByPK(prInf);
        }

        public bool UpdateProject(int projId, string projectDesc, string client, DateTime startDate, DateTime endDate, int LastModifiedBy)
        {
            EmployeeManager mgr = new EmployeeManager(uID);
            ProjectInfo prInf = new ProjectInfo();

            prInf.ProjectId=projId;
            prInf.ProjectDescription = projectDesc;
            prInf.Client = client;
            prInf.StartDate = startDate;
            prInf.EndDate = endDate;
            prInf.LastModifiedBy = LastModifiedBy;

            return mgr.UpdateProject(prInf);

        }


    }
}