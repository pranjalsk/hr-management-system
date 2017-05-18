using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRS_CaseStudy_2.BusinessEntity
{
    public class SkillInfo
    {
        private int skillId;

        public int SkillId
        {
            get { return skillId; }
            set { skillId = value; }
        }

        private string skillName;

        public string SkillName
        {
            get { return skillName; }
            set { skillName = value; }
        }

        private string skillDescription;

        public string SkillDescription
        {
            get { return skillDescription; }
            set { skillDescription = value; }
        }

        private int categoryId;

        public int CategoryId
        {
            get { return categoryId; }
            set { categoryId = value; }
        }

        private string categoryName;

        public string CategoryName
        {
            get { return categoryName; }
            set { categoryName = value; }
        }

        private int createdBy;

        public int CreatedBy
        {
            get { return createdBy; }
            set { createdBy = value; }
        }

        private int modifiedBy;

        public int ModifiedBy
        {
            get { return modifiedBy; }
            set { modifiedBy = value; }
        }

        public SkillInfo()
        {

        }       
        public SkillInfo(int skillIdentifier, string skillIName, string skillDesc, int catId, string catName)
        {
            this.SkillId = skillIdentifier;
            this.SkillName = skillName;
            this.SkillDescription = skillDesc;
            this.CategoryId = catId;
            this.CategoryName = catName;
        }
        
    }
}