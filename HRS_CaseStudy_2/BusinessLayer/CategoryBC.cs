using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using HRS_CaseStudy_2.BusinessEntity;
using HRS_CaseStudy_2.DAO;
using Microsoft.ApplicationBlocks.Data;


namespace HRS_CaseStudy_2.BusinessLayer
{
    public class CategoryBC
    {
         CategoryDAO cdao=new CategoryDAO();
         private int createdBy;
        public int CreatedBy
        {
            get { return createdBy; }
            set { createdBy = value; }
        }

        public CategoryBC()
        {
        }

        public CategoryBC(int userId)
        {
            cdao = new CategoryDAO(userId);
            this.CreatedBy = userId;
        }


        public bool categoryInsert(CategoryInfo cInfo)
        {
       
        return cdao.categoryInsert(cInfo);

        }
        public DataSet categorySearch(string pname)
        {
            
            return cdao.categorySearch(pname);
        }

        public bool categoryUpdate(CategoryInfo cinfo)
        {
           
            return cdao.categoryUpdate(cinfo);
        }

        public DataSet categoryView(CategoryInfo cinfo)
        {
            
            return cdao.categoryView(cinfo);
        }
   

         }

}