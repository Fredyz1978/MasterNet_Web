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
    
    public partial class CO_DETALLE_DOCUMENTO_COMPRA
    {
        public System.Guid CO_DET_DOC_COM_COD { get; set; }
        public System.Guid CO_DOC_COM_ID { get; set; }
        public string CO_DET_DOC_COM_ART_COD { get; set; }
        public string CO_DET_DOC_COM_ART_NOM { get; set; }
        public Nullable<double> CO_DET_DOC_COM_CAN { get; set; }
        public Nullable<double> CO_DET_DOC_COM_PRE { get; set; }
        public Nullable<double> CO_DET_DOC_COM_DES { get; set; }
        public Nullable<double> CO_DET_DOC_COM_VAL_ICE { get; set; }
        public Nullable<double> CO_DET_DOC_COM_IVA { get; set; }
        public Nullable<double> CO_DET_DOC_COM_TOT { get; set; }
        public Nullable<bool> CO_DET_DOC_COM_TIP_ART { get; set; }
        public Nullable<double> CO_DET_DOC_COM_POR_ICE { get; set; }
        public Nullable<double> CO_DET_DOC_COM_POR_IVA { get; set; }
        public string CO_DET_DOC_COM_ART_BAR { get; set; }
        public Nullable<bool> CO_CORRE_INV_DET_COM { get; set; }
        public Nullable<int> CO_BOD_COD { get; set; }
        public string CO_BOD_NOM { get; set; }
        public Nullable<double> CO_CANTIDAD_EMPAQUE { get; set; }
    
        public virtual CO_DOCUMENTO_COMPRA CO_DOCUMENTO_COMPRA { get; set; }
    }
}