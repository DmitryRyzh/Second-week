//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OOOTechservice
{
    using System;
    using System.Collections.Generic;
    
    public partial class Orders
    {
        public int id_order { get; set; }
        public Nullable<int> id_user { get; set; }
        public Nullable<int> id_client { get; set; }
        public Nullable<int> id_status { get; set; }
        public string description { get; set; }
        public Nullable<int> id_break { get; set; }
        public Nullable<int> id_task { get; set; }
        public Nullable<int> id_equipment { get; set; }
        public Nullable<System.DateTime> date_start { get; set; }
        public Nullable<System.DateTime> date_end { get; set; }
    
        public virtual Breaks Breaks { get; set; }
        public virtual Clients Clients { get; set; }
        public virtual Equipment Equipment { get; set; }
        public virtual Status Status { get; set; }
        public virtual Users Users { get; set; }
    }
}