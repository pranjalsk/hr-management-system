using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using HRS_CaseStudy_2.DAO;
namespace SearchService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    public class Service1 : IService1
    {

        public System.Data.DataSet EmployeeSearch(string firstName, string lastName, int userid)
        {
            return new EmployeeDAO(userid).EmployeeSearch(firstName, lastName);
        }

        public System.Data.DataSet categorySearch(string pname)
        {
            return new CategoryDAO().categorySearch(pname);
        }

        public System.Data.DataSet SearchProjectByName(string pName, int uId)
        {
            return new ProjectDAO().SearchProjectByName(pName, uId);
        }

        public System.Data.DataSet SearchSkills(string skillName)
        {
            return new SkillDAO().SearchSkills(skillName);
        }
    }
}
