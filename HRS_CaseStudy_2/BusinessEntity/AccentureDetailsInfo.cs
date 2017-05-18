using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRS_CaseStudy_2.BusinessEntity
{
    public class AccentureDetailsInfo
    {
        private string employeeId;

        public string EmployeeId
        {
            get { return employeeId; }
            set { employeeId = value; }
        }

        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        private string enterpriseId;

        public string EnterpriseId
        {
            get { return enterpriseId; }
            set { enterpriseId = value; }
        }

        private int level;

        public int Level
        {
            get { return level; }
            set { level = value; }
        }

        private string levelDescription;

        public string LevelDescription
        {
            get { return levelDescription; }
            set { levelDescription = value; }
        }
        
        private string lMU;

        public string LMU
        {
            get { return lMU; }
            set { lMU = value; }
        }

        private string gMU;

        public string GMU
        {
            get { return gMU; }
            set { gMU = value; }
        }

        private DateTime dateHired;

        public DateTime DateHired
        {
            get { return dateHired; }
            set { dateHired = value; }
        }

        private string workGroup;

        public string WorkGroup
        {
            get { return workGroup; }
            set { workGroup = value; }
        }

        private int specialty;

        public int Specialty
        {
            get { return specialty; }
            set { specialty = value; }
        }

        private string specialtyDescription;

        public string SpecialtyDescription
        {
            get { return specialtyDescription; }
            set { specialtyDescription = value; }
        }
        
        private string serviceLine;

        public string ServiceLine
        {
            get { return serviceLine; }
            set { serviceLine = value; }
        }

        private string status;

        public string Status
        {
            get { return status; }
            set { status = value; }
        }

        private int createdBy;

        public int CreatedBy
        {
            get { return createdBy; }
            set { createdBy = value; }
        }


        
    }
}