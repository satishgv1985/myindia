using System.Text;
using System.Collections.Generic;

namespace JayahoIndia
{
    public class SqlInsert {

        private const char qstart = '`';
        private const char qend = '`';

        private class NameValueObject {
            public string Name;
            public string Value;
            public NameValueObject(string name, string value) {
                this.Name = name;
                this.Value = value;
            }
        }

        private List<NameValueObject> items;
        private string _tbl = "";
        public string Table {
            get { return _tbl; }
            set { _tbl = value; }
        }

        public SqlInsert() {
            items = new List<NameValueObject>();
        }

        public void Add(string column, string value, bool isString) {
            NameValueObject obj = new NameValueObject(column, value);
            if (isString)
                obj.Value = "'" + DBConfig.Sanitize(value) + "'";
            internal_values.Add(value);
            items.Add(obj);
        }

        public string GetInsertCommand() {
            StringBuilder sb = new StringBuilder();
            sb.Append("INSERT INTO ").Append(qstart).Append(Table).Append(qend).Append(" (");
            for (int i = 0; i < items.Count; i++) {
                sb.Append(qstart).Append(items[i].Name).Append(qend);
                if (i + 1 < items.Count)
                    sb.Append(", ");
            }
            sb.Append(") VALUES (");
            for (int i = 0; i < items.Count; i++) {
                sb.Append(items[i].Value);
                if (i + 1 < items.Count)
                    sb.Append(", ");
            }
            sb.Append(')');
            return sb.ToString();
        }

        List<string> internal_values = new List<string>();
        internal string[] Values() {
            return internal_values.ToArray();
        }

    }
}
