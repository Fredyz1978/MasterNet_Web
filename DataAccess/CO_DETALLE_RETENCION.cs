//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MasterNet.Core.DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class CO_DETALLE_RETENCION
    {
        public System.Guid CO_DET_RET_ID { get; set; }
        public System.Guid CO_RET_COD { get; set; }
        public Nullable<double> CO_RET_BAS { get; set; }
        public string CO_RET_DET_COD { get; set; }
        public string CO_TIP_RET_NOM { get; set; }
        public string CO_TIP_RET_COD_SRI { get; set; }
        public Nullable<double> CO_RET_POR { get; set; }
        public Nullable<double> CO_RET_VAL { get; set; }
        public string CO_RET_DET_CUE { get; set; }
        public string CO_RET_DET_IMP { get; set; }
        public Nullable<int> CO_TIP_RET_COD { get; set; }
    }
}