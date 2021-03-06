using System;

namespace angular_observables_api.Models
{
    public class TodoItem
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public DateTime TimeCreated { get; set; }
        public bool IsComplete { get; set; }
    }
}