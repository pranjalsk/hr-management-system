using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HRS_CaseStudy_2.DAO;
using HRS_CaseStudy_2.BusinessEntity;
using System.Data;
namespace HRS_CaseStudy_2.BusinessLayer
{
    public class EmployeeBC
    {
        
        private EmployeeDAO EmpDAO;

        public EmployeeDAO empDAO
        {
            get { return EmpDAO; }
            set { EmpDAO = value; }
        }

        

        //Constructor initializes object of employee DAO class

        public EmployeeBC(int userID)
        {
            empDAO = new EmployeeDAO(userID);
        }
        public bool EmployeeInsert(EmployeeInfo empInfo)
        {
           
            return empDAO.EmployeeInsert(empInfo);

        }

        public DataSet EmployeeSearch(string firstName, string lastName)
        {
            
            return empDAO.EmployeeSearch(firstName,lastName);
        }
        public DataTable EmployeeSearch(int empId) 
        {
           
           return empDAO.EmployeeSearchByPK(empId);
        }
       
        public DataSet GetLevelList()
        {

           
            return empDAO.GetLevelList();


        }
        public DataSet GetSpecialtyList()
        {
         
          return empDAO.GetSpecialtyList();


        }
        
        public DataSet GetStatusList()
        {
            
            return empDAO.GetStatusList();
        }

        public bool EmployeeUpdate(EmployeeInfo empInfo)
        {
           
           return empDAO.EmployeeUpdate(empInfo);
        }

      
    }
}