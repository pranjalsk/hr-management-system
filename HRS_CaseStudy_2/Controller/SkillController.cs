using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HRS_CaseStudy_2.Manager;
using HRS_CaseStudy_2.BusinessEntity;
using System.Data;


namespace HRS_CaseStudy_2.Controller
{
    public class SkillController
    {
        int createdBy;
        SkillInfo skillInfo = new SkillInfo();
        DataSet ds = new DataSet();
        public SkillController()
        {            
        }
        public SkillController(int createdBy)
        {
            this.createdBy = createdBy;
        }
        public bool CreateSkill(string skillName, string skillDesc, int catId, string catName)
        {
            EmployeeManager hr = new EmployeeManager(createdBy);
            skillInfo.SkillName = skillName;
            skillInfo.SkillDescription = skillDesc;
            skillInfo.CategoryId = catId;
            skillInfo.CategoryName = catName;            
            if (hr.CreateSkill(skillInfo))
	        {
                return true;	 
	        }
            else
            {
                return false;
            }
        }
       
        public DataSet SearchSkills(string skillName)    
        {
            EmployeeManager hr = new EmployeeManager(createdBy);
            ds=hr.SearchSkills(skillName);           
            return ds;
        }
        public SkillInfo SearchSkill(int skillId)
        {
            EmployeeManager hr = new EmployeeManager(createdBy);
            ds = hr.SearchSkill(skillId);
            skillInfo.SkillName = ds.Tables[0].Rows[0][0].ToString();
            skillInfo.SkillDescription = ds.Tables[0].Rows[0][1].ToString();
            skillInfo.CategoryName = ds.Tables[0].Rows[0][2].ToString();
            return skillInfo;
        }
        public bool UpdateSkill(SkillInfo skillInformation)
        {
            EmployeeManager hr = new EmployeeManager(createdBy);
            if (hr.UpdateSkill(skillInformation))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public DataSet GetCategoryList()
        {
            EmployeeManager hr = new EmployeeManager(createdBy);
            return ds = hr.GetCategoryList();
        }
    }
}