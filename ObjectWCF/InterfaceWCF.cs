using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ObjectWCF
{
    interface InterfaceWCFFile
    {
        [OperationContract]
        bool AddFile(File file);

        [OperationContract]
        File UpdateFile(File post);

        [OperationContract]
        int DeleteFile(int id);

        [OperationContract]
        File GetFileById(int id);
    }

    interface IMyPhotos : InterfaceWCFFile
    {

    }
}
