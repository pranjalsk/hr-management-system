using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRS_CaseStudy_2.BusinessEntity
{
    public class CategoryInfo
    {
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

        private string categoryDesc;

        public string CategoryDesc
        {
            get { return categoryDesc; }
            set { categoryDesc = value; }
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
        
        
        
        

    }


}