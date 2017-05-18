using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.ApplicationBlocks.Data;


namespace HRS_CaseStudy_2.BusinessEntity
{
    public class EmployeeInfo
    {
        private AccentureDetailsInfo accentureDetailsInfo;

        private int empId;

        public int EmpId
        {
            get { return empId; }
            set { empId = value; }
        }
        
        public AccentureDetailsInfo AccentureDetailsInfo
        {
            get { return accentureDetailsInfo; }
            set { accentureDetailsInfo = value; }
        }
        
        private string firstName;

        public string FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }

        private string middleName;

        public string MiddleName
        {
            get { return middleName; }
            set { middleName = value; }
        }

        private string lastName;

        public string LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }

        private DateTime birthDate;

        public DateTime BirthDate
        {
            get { return birthDate; }
            set { birthDate = value; }
        }

        private int age;

        public int Age
        {
            get { return age; }
            set { age = value; }
        }
        
        private string gender;

        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }

        private int civilStatus;

        public int CivilStatus
        {
            get { return civilStatus; }
            set { civilStatus = value; }
        }

        private string civilStatusDescription;

        public string CivilStatusDescription
        {
            get { return civilStatusDescription; }
            set { civilStatusDescription = value; }
        }
        
        private string sSNo;

        public string SSNo
        {
            get { return sSNo; }
            set { sSNo = value; }
        }

        private string tinNo;

        public string TinNo
        {
            get { return tinNo; }
            set { tinNo = value; }
        }

        private string citizenship;

        public string Citizenship
        {
            get { return citizenship; }
            set { citizenship = value; }
        }

        private string mobileNo;

        public string MobileNo
        {
            get { return mobileNo; }
            set { mobileNo = value; }
        }

        private string homePhoneNo;

        public string HomePhoneNo
        {
            get { return homePhoneNo; }
            set { homePhoneNo = value; }
        }

        private string street1;

        public string Street1
        {
            get { return street1; }
            set { street1 = value; }
        }

        private string street2;

        public string Street2
        {
            get { return street2; }
            set { street2 = value; }
        }

        private string city;

        public string City
        {
            get { return city; }
            set { city = value; }
        }

        private string state;

        public string State
        {
            get { return state; }
            set { state = value; }
        }

        private string country;

        public string Country
        {
            get { return country; }
            set { country = value; }
        }

        private string educBackGround;

        public string EducBackGround
        {
            get { return educBackGround; }
            set { educBackGround = value; }
        }

        private string recognitions;

        public string Recognitions
        {
            get { return recognitions; }
            set { recognitions = value; }
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