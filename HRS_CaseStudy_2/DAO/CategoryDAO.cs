using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
using HRS_CaseStudy_2.BusinessEntity;
using HRS_CaseStudy_2.Common;

namespace HRS_CaseStudy_2.DAO
{
    public class CategoryDAO
    {
        string connstr = @"Data Source=APPLE-PC\SQLEXPRESS;Initial Catalog=CASESTUDY;Integrated Security=True";

        private int createdBy;

        public int CreatedBy
        {
            get { return createdBy; }
            set { createdBy = value; }
        }
        public CategoryDAO()
        {

        }

        public CategoryDAO(int userId)
        {
            this.CreatedBy = userId;
        }

      


        public bool categoryInsert(CategoryInfo cInfo)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[3];
                param[0] = new SqlParameter("@categoryName", SqlDbType.VarChar);
                param[0].Value = cInfo.CategoryName;
                param[1] = new SqlParameter("@CategoryDesc", SqlDbType.VarChar);
                param[1].Value = cInfo.CategoryDesc;
                param[2] = new SqlParameter("@createdBy", SqlDbType.VarChar);
                param[2].Value = createdBy;
                int i = SqlHelper.ExecuteNonQuery(connstr, CommandType.StoredProcedure, "spCreateCategory", param);
                if (i > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException sqlEx)
            {

                new CustomException(sqlEx.Message, "Category DAO", "You are inside an exception", sqlEx.StackTrace, " ", CreatedBy);
                return false;
            }


        }
        
       
              
             
               
        public DataSet categorySearch(string pname)
        {
            try
            {
               SqlParameter param = new SqlParameter();
            param = new SqlParameter("@catName", SqlDbType.VarChar);
            param.Value = pname;
            DataSet ds = new DataSet();
            ds = SqlHelper.ExecuteDataset(connstr, CommandType.StoredProcedure, "spSearchCategory", param);
            return ds;
            }
            catch (SqlException sqlEx)
            {
                DataSet ds = new DataSet();
                 new CustomException(sqlEx.Message, "Employee DAO", "You are inside an exception", sqlEx.StackTrace, " ", CreatedBy);
                 return ds;
            }
           
        }


        public bool categoryUpdate(CategoryInfo cinfo)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[4];
                param[0] = new SqlParameter("@categoryId", SqlDbType.Int);
                param[0].Value = cinfo.CategoryId;
                param[1] = new SqlParameter("@categoryName", SqlDbType.VarChar);
                param[1].Value = cinfo.CategoryName;
                param[2] = new SqlParameter("@categoryDesc", SqlDbType.VarChar);
                param[2].Value = cinfo.CategoryDesc;
                param[3] = new SqlParameter("@modifiedBy", SqlDbType.Int);
                param[3].Value = cinfo.ModifiedBy;

                
                int i = SqlHelper.ExecuteNonQuery(connstr, CommandType.StoredProcedure, "spUpdateCategory", param);
                if (i > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException sqlEx)
            {
                
                 new CustomException(sqlEx.Message, "Employee DAO", "You are inside an exception", sqlEx.StackTrace, " ", CreatedBy);
                 return false;
            }
        }
            
          
        public DataSet categoryView(CategoryInfo cinfo)
        {

            try
            {
              SqlParameter param = new SqlParameter();
            param = new SqlParameter("@catId", SqlDbType.Int);
            param.Value = cinfo.CategoryId;
            DataSet ds = new DataSet();
            return ds = SqlHelper.ExecuteDataset(connstr, CommandType.StoredProcedure, "spViewCategory", param);
            
            }
            catch (SqlException sqlEx)
            {
                DataSet ds = new DataSet();
                 new CustomException(sqlEx.Message, "Employee DAO", "You are inside an exception", sqlEx.StackTrace, " ", CreatedBy);
                 return ds;
            }
           
        }




        

    }
}
