//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVCAssignment.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        public int Id { get; set; }
        public Nullable<int> concertId { get; set; }
        public string cusNmae { get; set; }
        public string comment { get; set; }
        public Nullable<System.DateTime> date { get; set; }
    
        public virtual Show Show { get; set; }
    }
}
