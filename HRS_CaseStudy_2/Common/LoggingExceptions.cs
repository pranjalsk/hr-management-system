using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.ApplicationBlocks.Data;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace HRS_CaseStudy_2.Common
{
    public class LoggingExceptions
    {
        //string constr = ConfigurationManager.ConnectionStrings[0].ToString();
        string constr = "Data Source=.;Initial Catalog=CASESTUDY;Integrated Security=True";
        public LoggingExceptions()
        {
           

        }

        public void LogIntoDatabase(string message, string source, string customMessage, string stackTrace, string severityLevel, int createdBy)
        {
           
                SqlParameter[] param = new SqlParameter[6];
                param[0] = new SqlParameter("@message", SqlDbType.VarChar);
                param[1] = new SqlParameter("@source", SqlDbType.VarChar);
                param[2] = new SqlParameter("@customMessage", SqlDbType.VarChar);
                param[3] = new SqlParameter("@stackTrace", SqlDbType.VarChar);
                param[4] = new SqlParameter("@severityLevel", SqlDbType.VarChar);
                param[5] = new SqlParameter("@createdBy", SqlDbType.Int);

                param[0].Value = message;
                param[1].Value = source;
                param[2].Value = customMessage;
                param[3].Value = stackTrace;
                param[4].Value = severityLevel;
                param[5].Value = createdBy;

                SqlHelper.ExecuteNonQuery(constr, CommandType.StoredProcedure, "spCreateError", param);
            
            
           
        }
    }
}