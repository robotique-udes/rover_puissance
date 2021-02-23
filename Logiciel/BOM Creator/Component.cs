using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;


namespace BOM_Creator
{
    enum ComponentType
    {
        Attenuator,
        Bridge_Rectifier,
        Battery,
        Capacitor,
        Capacitor_Network,
        Diode,
        Delay_Line,
        Display,
        Fuse,
        Ferrite_Bead,
        Fiducial,
        Filter,
        Generator,
        General_Network,
        Hardware,
        Circulator,
        Infrared_Diode,
        Jack,
        Jumper,
        Relay,
        Inductor,
        Loudspeaker,
        Motor,
        Microphone,
        Mechanical_Part,
        Optoisolator,
        Plug,
        Power_Supply,
        Transistor,
        Resistor,
        Resistor_Network,
        Thermistor,
        Varistor,
        Switch,
        Transformer,
        Thermocouple,
        TestPoint,
        Tuner,
        Integrated_Circuit,
        Vacuum_Tube,
        Voltage_Regulator,
        Crystal,
        Oscillator,
        Unknown
    }

    static class ComponentDictionary
    {
        public static Dictionary<string, ComponentType> dict = new Dictionary<string, ComponentType>
        {
            {"AT", ComponentType.Attenuator},
            {"BR", ComponentType.Bridge_Rectifier},
            {"BT", ComponentType.Battery},
            {"C", ComponentType.Capacitor},
            {"CN", ComponentType.Capacitor_Network},
            {"D", ComponentType.Diode},
            {"CR", ComponentType.Diode},
            {"DL", ComponentType.Delay_Line},
            {"DS", ComponentType.Display},
            {"F", ComponentType.Fuse},
            {"FB", ComponentType.Ferrite_Bead},
            {"FD", ComponentType.Fiducial},
            {"FL", ComponentType.Filter},
            {"G", ComponentType.Generator},
            {"GN", ComponentType.General_Network},
            {"H", ComponentType.Hardware},
            {"HY", ComponentType.Circulator},
            {"IR", ComponentType.Infrared_Diode},
            {"J", ComponentType.Jack},
            {"JP", ComponentType.Jumper},
            {"K", ComponentType.Relay},
            {"L", ComponentType.Inductor},
            {"LS", ComponentType.Loudspeaker},
            {"M", ComponentType.Motor},
            {"MK", ComponentType.Microphone},
            {"MP",ComponentType.Mechanical_Part},
            {"OP",ComponentType.Optoisolator},
            {"P",ComponentType.Plug},
            {"PS",ComponentType.Power_Supply},
            {"Q",ComponentType.Transistor},
            {"R",ComponentType.Resistor},
            {"RN",ComponentType.Resistor_Network},
            {"RT",ComponentType.Thermistor},
            {"RV",ComponentType.Varistor},
            {"S",ComponentType.Switch},
            {"T",ComponentType.Transformer},
            {"TC",ComponentType.Thermocouple},
            {"TP",ComponentType.TestPoint},
            {"TUN",ComponentType.Tuner},
            {"U",ComponentType.Integrated_Circuit},
            {"V",ComponentType.Vacuum_Tube},
            {"VR",ComponentType.Voltage_Regulator},
            {"XTAL",ComponentType.Crystal},
            {"Y",ComponentType.Oscillator},
        };
    }

    class Component
    {
        public Component(string refID, string val, string footprint)
        {
            Reference = refID;
            Type = componentTypeByRef();
            Value = val;
            Footprint = footprint;
        }

        private string Reference { get; }
        private ComponentType Type { get; }
        private string Value { get; }
        private string Footprint { get; }

        private ComponentType componentTypeByRef()
        {
            Regex rx = new Regex(@"([A-Z]*)");
            string st = rx.Match(Reference).Value;

            foreach(KeyValuePair<string, ComponentType> entry in ComponentDictionary.dict)
            {
                if(entry.Key == st)
                {
                    return entry.Value;
                }
            }

            return ComponentType.Unknown;
        }
    }
}
