using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;

namespace SearchService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {

        [OperationContract]
        DataSet EmployeeSearch(string firstName, string lastName, int userid);
        [OperationContract]
        DataSet categorySearch(string pname);
        [OperationContract]
        DataSet SearchProjectByName(string pName, int uId);
        [OperationContract]
        DataSet SearchSkills(string skillName);
      
        // TODO: Add your service operations here
    }


    
}
