using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MasterNet.Core.Common
{
    public class SecurityException: Exception
    {
        public int Code { get; set; }
    }
}
