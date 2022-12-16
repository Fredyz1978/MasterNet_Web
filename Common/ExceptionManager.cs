using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MasterNet.Core.Common
{
    public class ExceptionManager
    {
        [DebuggerStepThrough]
        [DebuggerStepperBoundary]
        public static void Validation(string code, string message)
        {
            throw new ValidationException(code, message);
        }

    }
}
