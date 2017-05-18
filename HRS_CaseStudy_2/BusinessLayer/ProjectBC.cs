using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HRS_CaseStudy_2.BusinessEntity;
using HRS_CaseStudy_2.DAO;
using System.Data;

namespace HRS_CaseStudy_2.BusinessLayer
{
    public class ProjectBC
    {
        ProjectDAO dal;

        public ProjectBC()
        {

        }
        public ProjectBC(int createdBy)
        {
            dal = new ProjectDAO(createdBy);
        }

        public bool CreateProject(ProjectInfo prInf)
        {
            ProjectDAO dao = new ProjectDAO();
            return dao.CreateProject(prInf);
        }

        public DataSet SearchProjectByName(string pName,int uId)
        {
            ProjectDAO dao = new ProjectDAO();
            return  dao.SearchProjectByName(pName,uId);
        }

        public ProjectInfo SearchProjectByPK(ProjectInfo prInf)
        {
            ProjectDAO dao = new ProjectDAO();
            return dao.SearchProjectByPK(prInf);
        }

        public bool UpdateProject(ProjectInfo prInf)
        {
            ProjectDAO dao = new ProjectDAO();
            return dao.UpdateProject(prInf);
        }

    }
}