using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HRS_CaseStudy_2.BusinessEntity;
using Microsoft.ApplicationBlocks.Data;
using System.Data;
using System.Data.SqlClient;
using HRS_CaseStudy_2.Common;

namespace HRS_CaseStudy_2.DAO
{
    public class SkillDAO
    {
        private int createdBy;
        DataSet ds = new DataSet();
        SqlConnection con = new SqlConnection(@"Data Source=APPLE-PC\SQLEXPRESS;Initial Catalog=CASESTUDY;Integrated Security=True");
        public SkillDAO()
        {

        }
        public SkillDAO(int userId)
        {
            this.createdBy = userId;
        }
        public bool CreateSkill(SkillInfo skillInformation)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[4];
                param[0] = new SqlParameter("@skillName", SqlDbType.VarChar);
                param[0].Value = skillInformation.SkillName;
                param[1] = new SqlParameter("@skillDesc", SqlDbType.VarChar);
                param[1].Value = skillInformation.SkillDescription;
                param[2] = new SqlParameter("@categoryId", SqlDbType.Int);
                param[2].Value = skillInformation.CategoryId;
                param[3] = new SqlParameter("@createdBy", SqlDbType.Int);
                param[3].Value = createdBy;
                int rowsAdded = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spCreateSkill", param);
                if (rowsAdded > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            
            catch (SqlException sqlException)
            {
                
                     new CustomException(sqlException.Message, "CreateSkill DAO", "Couldn't insert due to sql exception", sqlException.StackTrace, "", createdBy);
                     return false;
                 
               
            }
            catch (Exception ex)
            {
                new CustomException(ex.Message, "CreateSkill DAO", "Couldn't insert due to exception", ex.StackTrace, "", createdBy);
                return false;
            }
        }
        public DataSet SearchSkills(string skillName)     // return type mentioned in .doc is DataTable!!!
        {
            try
            {
                SqlParameter param = new SqlParameter();
                param = new SqlParameter("@skillName", SqlDbType.VarChar);
                param.Value = skillName;
                ds = new DataSet();
                ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spSearchSkill", param);
                return ds;
            }
            catch (SqlException sqlException)
            {
                new CustomException(sqlException.Message, "SearchSkills DAO", "Couldn't Search due to sql exception", sqlException.StackTrace, "", createdBy);
                return ds = null;
            }
            catch (Exception ex)
            {
                new CustomException(ex.Message, "SearchSkills DAO", "Couldn't Search due to exception", ex.StackTrace, "", createdBy);
                return ds = null;
            }
           
        }
        public DataSet SearchSkill(int skillId)
        {
            try
            {
                SqlParameter param = new SqlParameter();
                param = new SqlParameter("@skillId", SqlDbType.Int);
                param.Value = skillId;
                ds = new DataSet();
                return ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spViewSkill", param);
            }
            catch (SqlException sqlException)
            {                
                new CustomException(sqlException.Message, "SearchSkill DAO", "Couldn't view due to sql exception", sqlException.StackTrace, "", createdBy);
                return ds = null;
            }
            catch (Exception ex)
            {               
                new CustomException(ex.Message, "SearchSkill DAO", "Couldn't view due to exception", ex.StackTrace, "", createdBy);
                return ds = null;
            }
           

        }
        public bool UpdateSkill(SkillInfo skillInformation)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[4];
                param[0] = new SqlParameter("@skillId", SqlDbType.Int);
                param[0].Value = skillInformation.SkillId;
                param[1] = new SqlParameter("@skillName", SqlDbType.VarChar);
                param[1].Value = skillInformation.SkillName;
                param[2] = new SqlParameter("@skillDesc", SqlDbType.VarChar);
                param[2].Value = skillInformation.SkillDescription;
                param[3] = new SqlParameter("@modifiedBy", SqlDbType.Int);
                param[3].Value = skillInformation.ModifiedBy;
                int rowsModified = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spUpdateSkill", param);
                if (rowsModified > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (SqlException sqlException)
            {                
                new CustomException(sqlException.Message, "UpdateSkill DAO", "Couldn't update due to sql exception", sqlException.StackTrace, "", createdBy);
                return false;
            }
            catch (Exception ex)
            {                
                new CustomException(ex.Message, "UpdateSkill DAO", "Couldn't update due to exception", ex.StackTrace, "", createdBy);
                return false;
            }       
        }

        public DataSet GetCategoryList()
        {
            try
            {
                ds = new DataSet();
                return ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spGetCategoryList");
            }
            catch (SqlException sqlException)
            {
                new CustomException(sqlException.Message, "GetCategoryList DAO", "Couldn't Get Category List due to sql exception", sqlException.StackTrace, "", createdBy);
                return ds;
            }
            catch (Exception ex)
            {             
                new CustomException(ex.Message, "GetCategoryList DAO", "Couldn't Get Category List due to exception", ex.StackTrace, "", createdBy);
                return ds;
            }   
          
        }

    }
}