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
    
    public partial class CO_GUIA_REMISION
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CO_GUIA_REMISION()
        {
            this.CO_DETALLE_GUIA_REMISION = new HashSet<CO_DETALLE_GUIA_REMISION>();
        }
    
        public System.Guid CO_DOC_VEN_GUI_COD { get; set; }
        public string CO_EMP_RUC { get; set; }
        public System.Guid CO_DOC_VEN_ID { get; set; }
        public string CO_DOC_VEN_GUI_NUM { get; set; }
        public Nullable<System.DateTime> CO_DOC_VEN_GUI_FEC_INI { get; set; }
        public Nullable<System.DateTime> CO_DOC_VEN_GUI_FEC_TER { get; set; }
        public string CO_DOC_VEN_GUI_DES { get; set; }
        public string CO_DOC_VEN_GUI_TIP { get; set; }
        public string CO_DOC_VEN_GUI_NOM_TRA { get; set; }
        public string CO_DOC_VEN_GUI_IDE { get; set; }
        public string CO_DOC_VEN_GUI_PLACA { get; set; }
        public int CO_ESTADO { get; set; }
        public System.DateTime CO_DOC_VEN_GUI_FEC_REG { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CO_DETALLE_GUIA_REMISION> CO_DETALLE_GUIA_REMISION { get; set; }
        public virtual CO_DOCUMENTO_VENTA CO_DOCUMENTO_VENTA { get; set; }
        public virtual CO_EMPRESA CO_EMPRESA { get; set; }
    }
}
