using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace BOM_Creator
{
    class NetFile
    {
        public List<Component> components;

        public NetFile()
        {
            components = new List<Component>(); 
        }

        public void parseFile(string filePath)
        {
            List<string> componentIDs = new List<string>();
            List<string> values = new List<string>();
            List<string> footprints = new List<string>();

            string fileContent = File.ReadAllText(filePath);

            Regex rx = new Regex(@"\((.*?)\)");

            MatchCollection mtchs = rx.Matches(fileContent);
            
            foreach(string match in mtchs.Cast<Match>().Select(m => m.Value).ToArray())
            {
                string trimmed;
                trimmed = match.Trim('(');
                trimmed = trimmed.Trim(')');

                if (trimmed.Contains("comp") && !trimmed.Contains("company"))
                {
                    componentIDs.Add(trimmed.Split(' ')[2]);
                }

                else if (trimmed.Contains("value") && !trimmed.Contains("\"\""))
                {
                    values.Add(trimmed.Split(' ')[1]);
                }

                else if (trimmed.Contains("footprint") && !trimmed.Contains("\"\""))
                {
                    footprints.Add(trimmed.Split(' ')[1]);
                }
            }

            for(int i = 0; i < componentIDs.Count; i++)
            {
                components.Add(new Component(componentIDs[i], values[i], footprints[i]));
            }

            int ij = 0;
        }
    }
}
