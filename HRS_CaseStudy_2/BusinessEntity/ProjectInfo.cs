using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRS_CaseStudy_2.BusinessEntity
{
    public class ProjectInfo
    {
        
        private int projectId;

        public int ProjectId
        {
            get { return projectId; }
            set { projectId = value; }
        }

        private string projectName;

        public string ProjectName
        {
            get { return projectName; }
            set { projectName = value; }
        }

        private string projectDescription;

        public string ProjectDescription
        {
            get { return projectDescription; }
            set { projectDescription = value; }
        }

        private DateTime startDate;

        public DateTime StartDate
        {
            get { return startDate; }
            set { startDate = value; }
        }
        private DateTime endDate;

        public DateTime EndDate
        {
            get { return endDate; }
            set { endDate = value; }
        }

        private string client;
        public string Client
        {
            get { return client; }
            set { client = value; }
        }

        private int createdBy;

        public int CreatedBy
        {
            get { return createdBy; }
            set { createdBy = value; }
        }

        private int lastModifiedBy;

        public int LastModifiedBy
        {
            get { return lastModifiedBy; }
            set { lastModifiedBy = value; }
        }
        
        

    }
}