using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HRS_CaseStudy_2.Manager;
using HRS_CaseStudy_2.BusinessEntity;
using System.Data;

namespace HRS_CaseStudy_2.Controller
{
    public class EmployeeController
    {
        private int createdBy;

        public int CreatedBy
        {
            get { return createdBy; }
            set { createdBy = value; }
        }
        private EmployeeManager EmpManager;

        public EmployeeManager empManager
        {
            get { return EmpManager; }
            set { EmpManager = value; }
        }
        
        
       //Constructor initializes created by

        public EmployeeController(int userID)
        {
            this.CreatedBy=userID;
            empManager = new EmployeeManager(userID);
        }


        public DataSet EmployeeSearch(string FirstName, string LastName)
        {
            
            EmployeeInfo empInfo = new EmployeeInfo();
            empInfo.FirstName = FirstName;
            empInfo.LastName = LastName;
            return empManager.EmployeeSearch(FirstName,LastName);
        }
        public EmployeeInfo EmployeeSearch(int empId)
        {
            
            EmployeeInfo empInfo = new EmployeeInfo();
            AccentureDetailsInfo accDetailsInfo=new AccentureDetailsInfo();

            DataTable dt=new DataTable();
            dt=empManager.EmployeeSearch(empId);
            
           // empInfo.AccentureDetailsInfo.EmployeeId =dt.Rows[0]["EmployeeId"].ToString();
            empInfo.EmpId = int.Parse(dt.Rows[0]["EmployeeId"].ToString());
            empInfo.FirstName=dt.Rows[0]["FirstName"].ToString();
            empInfo.MiddleName=dt.Rows[0]["MiddleName"].ToString();
            empInfo.LastName = dt.Rows[0]["LastName"].ToString();
            empInfo.BirthDate =System.Convert.ToDateTime( dt.Rows[0]["BirthDate"]);
            empInfo.Age = System.Convert.ToInt32 (dt.Rows[0]["Age"].ToString());
            empInfo.Gender = dt.Rows[0]["Gender"].ToString();
            empInfo.CivilStatus = System.Convert.ToInt32(dt.Rows[0]["CivilStatus"].ToString());
            empInfo.CivilStatusDescription = dt.Rows[0]["CivilStatusDescription"].ToString();
            empInfo.SSNo = dt.Rows[0]["SSNo"].ToString();
            empInfo.TinNo = dt.Rows[0]["TinNo"].ToString();
            empInfo.Citizenship = dt.Rows[0]["Citizenship"].ToString();
            empInfo.MobileNo = dt.Rows[0]["MobileNo"].ToString();
            empInfo.HomePhoneNo = dt.Rows[0]["HomePhoneNo"].ToString();
            empInfo.Street1 = dt.Rows[0]["Street1"].ToString();
            empInfo.Street2 = dt.Rows[0]["Street2"].ToString();
            empInfo.City = dt.Rows[0]["City"].ToString();
            empInfo.State = dt.Rows[0]["State"].ToString();
            empInfo.Country = dt.Rows[0]["Country"].ToString();
            empInfo.EducBackGround = dt.Rows[0]["EducBackGround"].ToString();
            empInfo.Recognitions = dt.Rows[0]["Recognitions"].ToString();

            accDetailsInfo.Email = dt.Rows[0]["Email"].ToString();
            accDetailsInfo.EnterpriseId = dt.Rows[0]["EnterpriseId"].ToString();
            accDetailsInfo.Level = int.Parse(dt.Rows[0]["Level"].ToString());
            accDetailsInfo.LevelDescription = dt.Rows[0]["LevelDescription"].ToString();
            accDetailsInfo.LMU = dt.Rows[0]["LMU"].ToString();
            accDetailsInfo.GMU = dt.Rows[0]["GMU"].ToString();
            accDetailsInfo.DateHired = DateTime.Parse(dt.Rows[0]["DateHired"].ToString());
            accDetailsInfo.WorkGroup = dt.Rows[0]["WorkGroup"].ToString();
            accDetailsInfo.Specialty = int.Parse(dt.Rows[0]["Specialty"].ToString());
            accDetailsInfo.SpecialtyDescription = dt.Rows[0]["SpecialtyDescription"].ToString();
            accDetailsInfo.ServiceLine = dt.Rows[0]["ServiceLine"].ToString();
            accDetailsInfo.Status = dt.Rows[0]["Status"].ToString();

            empInfo.AccentureDetailsInfo = accDetailsInfo;
            return empInfo;
        }

       
        public DataSet GetLevelList()
        {
            
            return empManager.GetLevelList();
        }
        public DataSet GetSpecialtyList()
        {
           
            return empManager.GetSpecialtyList();
        }

        public DataSet GetStatusList()
        {
           
            return empManager.GetStatusList();
        }

        public bool EmployeeUpdate(int EmpId,string FirstName,string MiddleName,
                                    string LastName,DateTime BirthDate,string Gender,
                                    int CivilStatus,string SSNo,string TinNo,string Citizenship,
                                    string MobileNo,string HomePhoneNo,string Street1,string Street2,
                                    string City,string State,string Country,string EducBackGround,
                                    string Recognitions,string Email,string EnterpriseId,int Level,
                                    string LMU,string GMU,DateTime DateHired,string WorkGroup,int Specialty,
                                    string ServiceLine,string Status,int LastModifiedBy)
        {
            
            EmployeeInfo empInfo = new EmployeeInfo();
            AccentureDetailsInfo accDetailsInfo = new AccentureDetailsInfo();
            empInfo.EmpId = EmpId;
            empInfo.FirstName = FirstName;
            empInfo.MiddleName = MiddleName;
            empInfo.LastName = LastName;
            empInfo.BirthDate = BirthDate;
            empInfo.Gender = Gender;
            empInfo.CivilStatus = CivilStatus;
            empInfo.SSNo = SSNo;
            empInfo.TinNo = TinNo;
            empInfo.Citizenship = Citizenship;
            empInfo.MobileNo = MobileNo;
            empInfo.HomePhoneNo = HomePhoneNo;
            empInfo.Street1 = Street1;
            empInfo.Street2 = Street2;
            empInfo.City = City;
            empInfo.State = State;
            empInfo.Country = Country;
            empInfo.EducBackGround = EducBackGround;
            empInfo.Recognitions = Recognitions;
            accDetailsInfo.Email = Email;
            accDetailsInfo.EnterpriseId = EnterpriseId;
            accDetailsInfo.Level = Level;
            accDetailsInfo.LMU = LMU;
            accDetailsInfo.GMU = GMU;
            accDetailsInfo.DateHired = DateHired;
            accDetailsInfo.WorkGroup = WorkGroup;
            accDetailsInfo.Specialty = Specialty;
            accDetailsInfo.ServiceLine = ServiceLine;
            accDetailsInfo.Status = Status;
            empInfo.LastModifiedBy = LastModifiedBy;

            empInfo.AccentureDetailsInfo = accDetailsInfo;
            return empManager.EmployeeUpdate(empInfo);

        }

    
        public bool EmployeeInsert(string FirstName,string MiddleName,string LastName,
                                    DateTime BirthDate,string Gender,int CivilStatus,
                                    string SSNo,string TinNo,string Citizenship,string MobileNo,
                                    string HomePhoneNo,string Street1,string Street2,
                                    string City,string State,string Country,string EducBackGround,
                                    string Recognitions,string Email,string EnterpriseId,int Level,
                                    string LMU,string GMU,DateTime DateHired,string WorkGroup,
                                    int Specialty,string ServiceLine,string Status,int CreatedBy)
        {
            EmployeeInfo empInfo = new EmployeeInfo();
            AccentureDetailsInfo accDetailsInfo=new AccentureDetailsInfo();
            
            empInfo.FirstName = FirstName;
            empInfo.MiddleName=MiddleName;
            empInfo.LastName=LastName;
            empInfo.BirthDate=BirthDate;
            empInfo.Gender=Gender;
            empInfo.CivilStatus=CivilStatus;
            empInfo.SSNo=SSNo;
            empInfo.TinNo=TinNo;
            empInfo.Citizenship=Citizenship;
            empInfo.MobileNo=MobileNo;
            empInfo.HomePhoneNo=HomePhoneNo;
            empInfo.Street1=Street1;
            empInfo.Street2=Street2;
            empInfo.City=City;
            empInfo.State=State;
            empInfo.Country=Country;
            empInfo.EducBackGround=EducBackGround;
            empInfo.Recognitions=Recognitions;
            accDetailsInfo.Email = Email;
            accDetailsInfo.EnterpriseId = EnterpriseId;
            accDetailsInfo.Level = Level;
            accDetailsInfo.LMU = LMU;
            accDetailsInfo.GMU = GMU;
            accDetailsInfo.DateHired = DateHired;
            accDetailsInfo.WorkGroup = WorkGroup;
            accDetailsInfo.Specialty = Specialty;
            accDetailsInfo.ServiceLine = ServiceLine;
            accDetailsInfo.Status = Status;
            empInfo.CreatedBy = CreatedBy;

            empInfo.AccentureDetailsInfo = accDetailsInfo;
           
            return empManager.EmployeeInsert(empInfo);
                 
        }



    }
}
