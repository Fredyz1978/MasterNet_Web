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
    
    public partial class CO_DOCUMENTO_VENTA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CO_DOCUMENTO_VENTA()
        {
            this.CO_DETALLE_DOCUMENTO_VENTA = new HashSet<CO_DETALLE_DOCUMENTO_VENTA>();
            this.CO_GUIA_REMISION = new HashSet<CO_GUIA_REMISION>();
        }
    
        public System.Guid CO_DOC_VEN_ID { get; set; }
        public string CO_EMP_RUC { get; set; }
        public int CO_TIP_DOC_VEN_NUM { get; set; }
        public Nullable<System.Guid> CO_CLI_COD { get; set; }
        public Nullable<System.Guid> CO_VEN_ID { get; set; }
        public string CO_DOC_VEN_NUM { get; set; }
        public Nullable<System.DateTime> CO_DOC_VEN_FEC { get; set; }
        public string CO_DOC_VEN_EST { get; set; }
        public string CO_DOC_VEN_DET { get; set; }
        public Nullable<double> CO_DOC_VEN_TOT_NET { get; set; }
        public Nullable<double> CO_DOC_VEN_POR_DES { get; set; }
        public Nullable<double> CO_DOC_VEN_DES { get; set; }
        public Nullable<int> CO_DOC_VEN_POR_IVA { get; set; }
        public Nullable<double> CO_DOC_VEN_IVA { get; set; }
        public Nullable<double> CO_DOC_VEN_TOT_PAG { get; set; }
        public string CO_DOC_VEN_FOR_PAG { get; set; }
        public Nullable<bool> CO_DOC_VEN_EFE { get; set; }
        public Nullable<double> CO_DOC_VEN_EFE_VAL { get; set; }
        public Nullable<bool> CO_DOC_VEN_CHE { get; set; }
        public Nullable<double> CO_DOC_VEN_CHE_VAL { get; set; }
        public string CO_DOC_VEN_CHE_NUM { get; set; }
        public string CO_DOC_VEN_CHE_BAN { get; set; }
        public Nullable<bool> CO_DOC_VEN_TAR { get; set; }
        public Nullable<double> CO_DOC_VEN_TAR_VAL { get; set; }
        public string CO_DOC_VEN_TAR_NUM { get; set; }
        public string CO_DOC_VEN_TAR_VAU { get; set; }
        public Nullable<int> CO_DOC_VEN_NUM_PAG { get; set; }
        public string CO_DOC_VEN_USU_ALI { get; set; }
        public string CO_DOC_VEN_TOT_LET { get; set; }
        public string CO_DOC_VEN_GUI_NUM { get; set; }
        public Nullable<System.DateTime> CO_DOC_VEN_GUI_FEC_INI { get; set; }
        public Nullable<System.DateTime> CO_DOC_VEN_GUI_FEC_TER { get; set; }
        public string CO_DOC_VEN_GUI_TIP { get; set; }
        public string CO_DOC_VEN_GUI_NOM_TRA { get; set; }
        public string CO_DOC_VEN_GUI_IDE { get; set; }
        public Nullable<double> CO_DOC_VEN_VAL_ICE { get; set; }
        public Nullable<double> CO_DOC_VEN_VAL_IVA0 { get; set; }
        public string CO_DOC_VEN_TIP_PRE { get; set; }
        public Nullable<int> CO_COM_NUM_RET { get; set; }
        public Nullable<System.DateTime> CO_DOC_VEN_CHE_FEC { get; set; }
        public string CO_DOC_VEN_OTR { get; set; }
        public Nullable<int> CO_DOC_VEN_TAR_NOM { get; set; }
        public int AlmacenID { get; set; }
        public Nullable<int> CO_DOC_VEN_DIAS_PLA { get; set; }
        public Nullable<System.DateTime> CO_DOC_VEN_FEC_PAGO { get; set; }
        public Nullable<bool> CO_DOC_VEN_TRA { get; set; }
        public Nullable<double> CO_DOC_VEN_TRA_VAL { get; set; }
        public string CO_DOC_VEN_TRA_DOC_NUM { get; set; }
        public Nullable<System.Guid> CO_DOC_VEN_ORIGINAL_ID { get; set; }
        public Nullable<System.Guid> CO_RESERVA_ID { get; set; }
        public Nullable<int> CO_PROFORMA_ID { get; set; }
        public Nullable<System.Guid> FORMA_PAGO_ID { get; set; }
        public Nullable<int> CO_DOC_VEN_CRE_FOR { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CO_DETALLE_DOCUMENTO_VENTA> CO_DETALLE_DOCUMENTO_VENTA { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CO_GUIA_REMISION> CO_GUIA_REMISION { get; set; }
    }
}
