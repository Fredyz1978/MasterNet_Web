using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MasterNet.Core.Common
{
    public class ValidationException : Exception
    {
        public ValidationException(string Code, string message)
            : base(message)
        {
            this.Code = Code;
        }

        public string Code { get; set; }
    }
}
