using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
using HRS_CaseStudy_2.Manager;
using HRS_CaseStudy_2.BusinessEntity;


namespace HRS_CaseStudy_2.Controller
{
    public class CategoryController
    {
        EmployeeManager mgr;
        private int createdBy;

        public int CreatedBy
        {
            get { return createdBy; }
            set { createdBy = value; }
        }
        
        public CategoryController(int userId)
        {
            this.CreatedBy = userId;
            mgr = new EmployeeManager(userId);
           
        }
        public bool categoryInsert(string cname, string cdesc, int createdby)
        {
            CategoryInfo cinfo = new CategoryInfo();
            cinfo.CategoryName = cname;
            cinfo.CategoryDesc = cdesc;
            cinfo.CreatedBy = createdby;
            return mgr.categoryInsert(cinfo);
        }

        public DataSet categorySearch(string pname)
        {
            CategoryInfo cinfo = new CategoryInfo();
            cinfo.CategoryName = pname;
            return mgr.categorySearch(pname);
        }

        public bool categoryUpdate(int cid, string cname, string cdesc, int modby)
        {
            CategoryInfo cinfo = new CategoryInfo();
            cinfo.CategoryId = cid;
            cinfo.CategoryName = cname;
            cinfo.CategoryDesc = cdesc;
            cinfo.ModifiedBy = modby;
            return mgr.categoryUpdate(cinfo);
        }

        public DataSet categoryView(int cid)
        {
            CategoryInfo cinfo = new CategoryInfo();
            cinfo.CategoryId = cid;
            return mgr.categoryView(cinfo);
        }



        
    }
}