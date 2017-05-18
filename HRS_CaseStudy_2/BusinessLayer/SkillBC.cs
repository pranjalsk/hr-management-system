using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HRS_CaseStudy_2.BusinessEntity;
using HRS_CaseStudy_2.DAO;
using System.Data;


namespace HRS_CaseStudy_2.BusinessLayer
{
    public class SkillBC
    {
        private SkillDAO skillDAO=new SkillDAO();
        DataSet ds = new DataSet();

        public SkillBC()
        {

        }

        public SkillBC(int userId)
        {
            skillDAO = new SkillDAO(userId);

        }
        public bool CreateSkill(SkillInfo skillInfo)
        {
            if (skillDAO.CreateSkill(skillInfo))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public DataSet SearchSkills(string skillName)     // return type mentioned in .doc is DataSet!!!
        {
            return ds = skillDAO.SearchSkills(skillName);
        }
        public DataSet SearchSkill(int skillId)
        {            
            return ds = skillDAO.SearchSkill(skillId);
        }
        public bool UpdateSkill(SkillInfo skillInformation)
        {            
            if (skillDAO.UpdateSkill(skillInformation))
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
           
            return ds = skillDAO.GetCategoryList();
        }
    }
}