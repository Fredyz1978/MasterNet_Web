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
    
    public partial class CO_TABLA_PRECIO
    {
        public System.Guid ListaDePrecioID { get; set; }
        public System.Guid CO_ART_COD { get; set; }
        public double CO_TAB_PRE { get; set; }
        public double CO_TAB_PRE_POR_ART { get; set; }
        public Nullable<double> CO_TAB_PRE_MIN { get; set; }
    
        public virtual CO_ARTICULO CO_ARTICULO { get; set; }
        public virtual CO_LISTA_PRECIO CO_LISTA_PRECIO { get; set; }
    }
}
