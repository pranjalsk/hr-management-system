using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using HRS_CaseStudy_2.BusinessEntity;
using Microsoft.ApplicationBlocks.Data;
using HRS_CaseStudy_2.Common;

namespace HRS_CaseStudy_2.DAO
{
    public class ProjectDAO
    {
        int createdBy;
        public ProjectDAO()
        {

        }
        public ProjectDAO(int createdBy)
        {
            this.createdBy = createdBy;
        }

        string con = @"Data Source=APPLE-PC\SQLEXPRESS;Initial Catalog=CASESTUDY;Integrated Security=True";

        public bool CreateProject(ProjectInfo prInf)
        {
            try
            {

                SqlParameter[] param = new SqlParameter[6];
                param[0] = new SqlParameter("@projectName", SqlDbType.VarChar);
                param[1] = new SqlParameter("@projectDesc", SqlDbType.VarChar);
                param[2] = new SqlParameter("@client", SqlDbType.VarChar);
                param[3] = new SqlParameter("@startDate", SqlDbType.DateTime);
                param[4] = new SqlParameter("@endDate", SqlDbType.DateTime);
                param[5] = new SqlParameter("@createdBy", SqlDbType.Int);

                param[0].Value = prInf.ProjectName;
                param[1].Value = prInf.ProjectDescription;
                param[2].Value = prInf.Client;
                param[3].Value = prInf.StartDate;
                param[4].Value = prInf.EndDate;
                param[5].Value = prInf.CreatedBy;

                int rowsAffected = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spCreateProject", param);
                if (rowsAffected > 0) { return true; }
                else { return false; }
            }
            catch (SqlException sqlEx)
            {
                new CustomException(sqlEx.Message, "Employee DAO", "You are inside an exception", sqlEx.StackTrace, " ", prInf.CreatedBy);
                return false;
            }
            catch (Exception Ex)
            {
                new CustomException(Ex.Message, "Employee DAO", "You are inside an exception", Ex.StackTrace, " ", createdBy);
                return false;
            }
        
        }

        public DataSet SearchProjectByName(string pName,int uId)
        {
            DataSet ds = new DataSet();
            try
            {
                SqlParameter param = new SqlParameter("@projectName", SqlDbType.VarChar);
                param.Value = pName;
                ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spSearchProject", param);
                return ds;
            }
            catch (SqlException sqlEx)
            {
                new CustomException(sqlEx.Message, "Employee DAO", "You are inside an exception", sqlEx.StackTrace, " ", createdBy);
                return ds;
            }
            catch(Exception Ex)
            {
                new CustomException(Ex.Message, "Employee DAO", "You are inside an exception", Ex.StackTrace, " ", createdBy);
                return ds;
            }
        }

        public ProjectInfo SearchProjectByPK(ProjectInfo prInf)
        {
            ProjectInfo pinfo = new ProjectInfo();
            try
            {
                SqlParameter param = new SqlParameter("@projectID", SqlDbType.Int);
                param.Value = prInf.ProjectId;
                DataSet ds = new DataSet();
                ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spViewProject", param);
                
                pinfo.ProjectName = ds.Tables[0].Rows[0]["ProjName"].ToString();
                pinfo.StartDate = Convert.ToDateTime(ds.Tables[0].Rows[0]["StartDate"].ToString());
                pinfo.EndDate = Convert.ToDateTime(ds.Tables[0].Rows[0]["EndDate"].ToString());
                pinfo.Client = ds.Tables[0].Rows[0]["Client"].ToString();
                pinfo.ProjectDescription = ds.Tables[0].Rows[0]["Description"].ToString();
                return pinfo;
            }
            catch (SqlException sqlEx)
            {
                new CustomException(sqlEx.Message, "Employee DAO", "You are inside an exception", sqlEx.StackTrace, " ", createdBy);
                return pinfo;
            }
            catch (Exception Ex)
            {
                new CustomException(Ex.Message, "Employee DAO", "You are inside an exception", Ex.StackTrace, " ", createdBy);
                return pinfo;
            }
         
        }

        public bool UpdateProject(ProjectInfo prInf)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[6];
                param[0] = new SqlParameter("@projectID", SqlDbType.Int);
                param[1] = new SqlParameter("@projectDesc", SqlDbType.VarChar);
                param[2] = new SqlParameter("@client", SqlDbType.VarChar);
                param[3] = new SqlParameter("@startDate", SqlDbType.DateTime);
                param[4] = new SqlParameter("@endDate", SqlDbType.DateTime);
                param[5] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);

                param[0].Value = prInf.ProjectId;
                param[1].Value = prInf.ProjectDescription;
                param[2].Value = prInf.Client;
                param[3].Value = prInf.StartDate;
                param[4].Value = prInf.EndDate;
                param[5].Value = prInf.LastModifiedBy;

                int rowsAffected = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spUpdateProject", param);
                if (rowsAffected > 0) { return true; }
                else { return false; }
            }
            catch (SqlException sqlEx)
            {
                new CustomException(sqlEx.Message, "Employee DAO", "You are inside an exception", sqlEx.StackTrace, " ", prInf.CreatedBy);
                return false;
            }
            catch (Exception Ex)
            {
                new CustomException(Ex.Message, "Employee DAO", "You are inside an exception", Ex.StackTrace, " ", createdBy);
                return false;
            }
        }



    }
}