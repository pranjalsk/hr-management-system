using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRS_CaseStudy_2.Common
{
    public class CustomException:ApplicationException
    {
        private string CustomMessage;

        public string customMessage
        {
            get { return CustomMessage; }
            set { CustomMessage = value; }
        }
        

        public CustomException(string message, string source,string customMessage,string stackTrace,string severityLevel,int createdBy  ):base(customMessage)
        {
            
             LoggingExceptions log=new LoggingExceptions();
             log.LogIntoDatabase(message, source, customMessage, stackTrace, severityLevel, createdBy);
        }                      
    }                          
}                              