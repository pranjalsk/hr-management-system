using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.ApplicationBlocks.Data;
using System.Data.SqlClient;
using System.Data;
using HRS_CaseStudy_2.BusinessEntity;
using System.Configuration;
using HRS_CaseStudy_2.Common;


namespace HRS_CaseStudy_2.DAO
{
    public class EmployeeDAO
    {
        //string constr = ConfigurationManager.ConnectionStrings[0].ConnectionString; 


        string constr = @"Data Source=APPLE-PC\SQLEXPRESS;Initial Catalog=CASESTUDY;Integrated Security=True";
        private int createdBy;

        public int CreatedBy
        {
            get { return createdBy; }
            set { createdBy = value; }
        }
        
        
        //constructor initializes the created by 
        public EmployeeDAO(int userID)
        {
            this.CreatedBy = userID;
        }


        public bool EmployeeInsert(EmployeeInfo empInfo)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[29];
                int i;

                param[0] = new SqlParameter("@FirstName", SqlDbType.VarChar);
                param[1] = new SqlParameter("@MiddleName", SqlDbType.VarChar);
                param[2] = new SqlParameter("@LastName", SqlDbType.VarChar);
                param[3] = new SqlParameter("@BirthDate", SqlDbType.DateTime);
                param[4] = new SqlParameter("@Gender", SqlDbType.VarChar);
                param[5] = new SqlParameter("@CivilStatus", SqlDbType.Int);
                param[6] = new SqlParameter("@SSNo", SqlDbType.VarChar);
                param[7] = new SqlParameter("@TinNo", SqlDbType.VarChar);
                param[8] = new SqlParameter("@Citizenship", SqlDbType.VarChar);
                param[9] = new SqlParameter("@MobileNo", SqlDbType.VarChar);
                param[10] = new SqlParameter("@HomePhoneNo", SqlDbType.VarChar);
                param[11] = new SqlParameter("@Street1", SqlDbType.VarChar);
                param[12] = new SqlParameter("@Street2", SqlDbType.VarChar);
                param[13] = new SqlParameter("@City", SqlDbType.VarChar);
                param[14] = new SqlParameter("@State", SqlDbType.VarChar);
                param[15] = new SqlParameter("@Country", SqlDbType.VarChar);
                param[16] = new SqlParameter("@EducBackGround", SqlDbType.VarChar);
                param[17] = new SqlParameter("@Recognitions", SqlDbType.VarChar);
                param[18] = new SqlParameter("@Email", SqlDbType.VarChar);
                param[19] = new SqlParameter("@EnterpriseId", SqlDbType.VarChar);


                param[20] = new SqlParameter("@Level", SqlDbType.Int);
                param[21] = new SqlParameter("@LMU", SqlDbType.VarChar);
                param[22] = new SqlParameter("@GMU", SqlDbType.VarChar);
                param[23] = new SqlParameter("@DateHired", SqlDbType.DateTime);
                param[24] = new SqlParameter("@WorkGroup", SqlDbType.VarChar);
                param[25] = new SqlParameter("@Specialty", SqlDbType.Int);
                param[26] = new SqlParameter("@ServiceLine", SqlDbType.VarChar);
                param[27] = new SqlParameter("@Status", SqlDbType.VarChar);
                param[28] = new SqlParameter("@CreatedBy", SqlDbType.Int);



                param[0].Value = empInfo.FirstName;
                param[1].Value = empInfo.MiddleName;
                param[2].Value = empInfo.LastName;
                param[3].Value = empInfo.BirthDate;
                param[4].Value = empInfo.Gender;
                param[5].Value = empInfo.CivilStatus;
                param[6].Value = empInfo.SSNo;
                param[7].Value = empInfo.TinNo;
                param[8].Value = empInfo.Citizenship;
                param[9].Value = empInfo.MobileNo;
                param[10].Value = empInfo.HomePhoneNo;
                param[11].Value = empInfo.Street1;
                param[12].Value = empInfo.Street2;
                param[13].Value = empInfo.City;
                param[14].Value = empInfo.State;
                param[15].Value = empInfo.Country;
                param[16].Value = empInfo.EducBackGround;
                param[17].Value = empInfo.Recognitions;
                param[18].Value = empInfo.AccentureDetailsInfo.Email;
                param[19].Value = empInfo.AccentureDetailsInfo.EnterpriseId;


                param[20].Value = empInfo.AccentureDetailsInfo.Level;
                param[21].Value = empInfo.AccentureDetailsInfo.LMU;
                param[22].Value = empInfo.AccentureDetailsInfo.GMU;
                param[23].Value = empInfo.AccentureDetailsInfo.DateHired;
                param[24].Value = empInfo.AccentureDetailsInfo.WorkGroup;
                param[25].Value = empInfo.AccentureDetailsInfo.Specialty;
                param[26].Value = empInfo.AccentureDetailsInfo.ServiceLine;
                param[27].Value = empInfo.AccentureDetailsInfo.Status;
                param[28].Value = empInfo.CreatedBy;

                i = SqlHelper.ExecuteNonQuery(constr, CommandType.StoredProcedure, "spCreateEmployee", param);


                if (i > 0)
                {
                    return true;
                }
                else { return false; }

         
           
               
          
            }
            catch (SqlException ex)
            {
               
                new CustomException(ex.Message, "Employee DAO", "You are inside an exception", ex.StackTrace, " ", CreatedBy);
                return false;
            }
                
            

          
        }

        public DataSet EmployeeSearch(string firstName,string lastName)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[2];
                param[0] = new SqlParameter("@firstName", SqlDbType.VarChar);
                param[0].Value = firstName;
                param[1] = new SqlParameter("@lastName", SqlDbType.VarChar);
                param[1].Value = lastName;

                DataSet ds = new DataSet();
                return ds = SqlHelper.ExecuteDataset(constr, CommandType.StoredProcedure, "spSearchEmployee", param);

            }
            catch (SqlException ex)
            {
                DataSet ds = new DataSet();

                new CustomException(ex.Message, "Employee DAO", "You are inside an exception", ex.StackTrace, " ", CreatedBy);
                return ds;
            }
            
        }

        public DataTable EmployeeSearchByPK(int empId) 
        {
            try
            {
                SqlParameter param = new SqlParameter("@empID", SqlDbType.Int);
                param.Value = empId;

                DataTable dt = new DataTable();
                dt = SqlHelper.ExecuteDataset(constr, CommandType.StoredProcedure, "spViewEmployee", param).Tables[0];

                return dt;
            }
            catch (SqlException ex)
            {
                 DataTable dt=new DataTable();
                 return dt;
                throw new CustomException(ex.Message, "Employee DAO", "You are inside an exception", ex.StackTrace, " ", CreatedBy);
            }
           
        }

        public DataSet GetLevelList()
        {
            DataSet ds = new DataSet();
            return ds = SqlHelper.ExecuteDataset(constr, CommandType.StoredProcedure, "spGetLevelList");


        }
        public DataSet GetSpecialtyList()
        {
            DataSet ds = new DataSet();
            return ds = SqlHelper.ExecuteDataset(constr, CommandType.StoredProcedure, "spGetSpecialtyList");


        }

        public DataSet GetStatusList() 
        {
            DataSet ds = new DataSet();
            return ds = SqlHelper.ExecuteDataset(constr, CommandType.StoredProcedure, "spGetCivilStatusList");
            

        }
        public bool EmployeeUpdate(EmployeeInfo empInfo)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[30];

                param[0] = new SqlParameter("@FirstName", SqlDbType.VarChar);
                param[1] = new SqlParameter("@MiddleName", SqlDbType.VarChar);
                param[2] = new SqlParameter("@LastName", SqlDbType.VarChar);
                param[3] = new SqlParameter("@BirthDate", SqlDbType.DateTime);
                param[4] = new SqlParameter("@Gender", SqlDbType.VarChar);
                param[5] = new SqlParameter("@CivilStatus", SqlDbType.Int);
                param[6] = new SqlParameter("@SSNo", SqlDbType.VarChar);
                param[7] = new SqlParameter("@TinNo", SqlDbType.VarChar);
                param[8] = new SqlParameter("@Citizenship", SqlDbType.VarChar);
                param[9] = new SqlParameter("@MobileNo", SqlDbType.VarChar);
                param[10] = new SqlParameter("@HomePhoneNo", SqlDbType.VarChar);
                param[11] = new SqlParameter("@Street1", SqlDbType.VarChar);
                param[12] = new SqlParameter("@Street2", SqlDbType.VarChar);
                param[13] = new SqlParameter("@City", SqlDbType.VarChar);
                param[14] = new SqlParameter("@State", SqlDbType.VarChar);
                param[15] = new SqlParameter("@Country", SqlDbType.VarChar);
                param[16] = new SqlParameter("@EducBackGround", SqlDbType.VarChar);
                param[17] = new SqlParameter("@Recognitions", SqlDbType.VarChar);
                param[18] = new SqlParameter("@Email", SqlDbType.VarChar);
                param[19] = new SqlParameter("@EnterpriseId", SqlDbType.VarChar);
                param[20] = new SqlParameter("@Level", SqlDbType.Int);
                param[21] = new SqlParameter("@LMU", SqlDbType.VarChar);
                param[22] = new SqlParameter("@GMU", SqlDbType.VarChar);
                param[23] = new SqlParameter("@DateHired", SqlDbType.DateTime);
                param[24] = new SqlParameter("@WorkGroup", SqlDbType.VarChar);
                param[25] = new SqlParameter("@Specialty", SqlDbType.Int);
                param[26] = new SqlParameter("@ServiceLine", SqlDbType.VarChar);
                param[27] = new SqlParameter("@Status", SqlDbType.VarChar);
                param[28] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                param[29] = new SqlParameter("@EmpId", SqlDbType.Int);
                param[0].Value = empInfo.FirstName;
                param[1].Value = empInfo.MiddleName;
                param[2].Value = empInfo.LastName;
                param[3].Value = empInfo.BirthDate;
                param[4].Value = empInfo.Gender;
                param[5].Value = empInfo.CivilStatus;
                param[6].Value = empInfo.SSNo;
                param[7].Value = empInfo.TinNo;
                param[8].Value = empInfo.Citizenship;
                param[9].Value = empInfo.MobileNo;
                param[10].Value = empInfo.HomePhoneNo;
                param[11].Value = empInfo.Street1;
                param[12].Value = empInfo.Street2;
                param[13].Value = empInfo.City;
                param[14].Value = empInfo.State;
                param[15].Value = empInfo.Country;
                param[16].Value = empInfo.EducBackGround;
                param[17].Value = empInfo.Recognitions;
                param[18].Value = empInfo.AccentureDetailsInfo.Email;
                param[19].Value = empInfo.AccentureDetailsInfo.EnterpriseId;
                param[20].Value = empInfo.AccentureDetailsInfo.Level;
                param[21].Value = empInfo.AccentureDetailsInfo.LMU;
                param[22].Value = empInfo.AccentureDetailsInfo.GMU;
                param[23].Value = empInfo.AccentureDetailsInfo.DateHired;
                param[24].Value = empInfo.AccentureDetailsInfo.WorkGroup;
                param[25].Value = empInfo.AccentureDetailsInfo.Specialty;
                param[26].Value = empInfo.AccentureDetailsInfo.ServiceLine;
                param[27].Value = empInfo.AccentureDetailsInfo.Status;
                param[28].Value = empInfo.LastModifiedBy;
                param[29].Value = empInfo.EmpId;

                int i = SqlHelper.ExecuteNonQuery(constr, CommandType.StoredProcedure, "spUpdateEmployee", param);
                if (i > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException ex)
            {
                
                 new CustomException(ex.Message, "Employee DAO", "You are inside an exception", ex.StackTrace, " ", CreatedBy);
                 return false;
            }
           
        }
       
      
       
    }
}