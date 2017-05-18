using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HRS_CaseStudy_2.BusinessEntity;
using HRS_CaseStudy_2.BusinessLayer;
using System.Data;

namespace HRS_CaseStudy_2.Manager
{
    public class EmployeeManager
    {

        DataSet ds = new DataSet();

        private int createdBy;
        
        public int CreatedBy
        {
            get { return createdBy; }
            set { createdBy = value; }
        }

        EmployeeBC EmpBC;
        SkillBC sBC;
        ProjectBC pbc;
        CategoryBC cbc;

        public EmployeeBC empBC
        {
            get { return EmpBC; }
            set { EmpBC = value; }
        }
        
        //Constructor initializes created by and object of employee BC class

        public EmployeeManager(int userID)
        {
            sBC = new SkillBC(userID);
            empBC = new EmployeeBC(userID);
            cbc = new CategoryBC(userID);
            pbc = new ProjectBC(userID);

            this.CreatedBy = userID;
            empBC = new EmployeeBC(userID);
        }

        public bool EmployeeInsert(EmployeeInfo empInfo)
        {
          
            return empBC.EmployeeInsert(empInfo);
        }
        public DataSet EmployeeSearch(string firstname,string lastname)
        {
            EmployeeSearchServiceRef.Service1Client ser = new EmployeeSearchServiceRef.Service1Client();
            return ser.EmployeeSearch(firstname, lastname, createdBy);
           
        }
        public DataTable EmployeeSearch(int empId) 
        {
            
            return empBC.EmployeeSearch(empId);
        }
        public bool EmployeeUpdate(EmployeeInfo empInfo)
        {
           
            return empBC.EmployeeUpdate(empInfo);
        }

        

       
        public DataSet GetLevelList()
        {

        
            return empBC.GetLevelList();


        }
        public DataSet GetSpecialtyList()
        {
         
            return empBC.GetSpecialtyList();
        }

        public DataSet GetStatusList()
        {
           
            return empBC.GetStatusList();
        }


        public bool categoryInsert(CategoryInfo cInfo)
        {

            return cbc.categoryInsert(cInfo);

        }
        public DataSet categorySearch(string pname)
        {

            return cbc.categorySearch(pname);
        }


        public bool categoryUpdate(CategoryInfo cinfo)
        {

            return cbc.categoryUpdate(cinfo);
        }

        public DataSet categoryView(CategoryInfo cinfo)
        {

            return cbc.categoryView(cinfo);
        }

        public DataSet SearchProjectByName(string pName, int uId)
        {

            EmployeeSearchServiceRef.Service1Client sc = new EmployeeSearchServiceRef.Service1Client();

            return sc.SearchProjectByName(pName, uId);
            
        }

        public ProjectInfo SearchProjectByPK(ProjectInfo prInf)
        {
            ProjectBC bc = new ProjectBC();
            return bc.SearchProjectByPK(prInf);
        }
        public bool UpdateProject(ProjectInfo prInf)
        {
            ProjectBC bc = new ProjectBC();
            return bc.UpdateProject(prInf);
        }

        public DataSet SearchSkills(string skillName)     // return type mentioned in .doc is DataTable!!!
        {
            EmployeeSearchServiceRef.Service1Client service1Client = new EmployeeSearchServiceRef.Service1Client();
            return ds = service1Client.SearchSkills(skillName);
        }
        public DataSet SearchSkill(int skillId)
        {
            return ds = sBC.SearchSkill(skillId);
        }
        public bool UpdateSkill(SkillInfo skillInformation)
        {
            if (sBC.UpdateSkill(skillInformation))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public DataSet GetCategoryList()
        {

            return ds = sBC.GetCategoryList();
        }
        public bool CreateProject(ProjectInfo prInf)
        {
            ProjectBC bc = new ProjectBC();
            return bc.CreateProject(prInf);
        }

        public bool CreateSkill(SkillInfo skillInfo)
        {
            if (sBC.CreateSkill(skillInfo))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}