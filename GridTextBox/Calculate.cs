using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GridTextBox
{
    public class Calculate
    {
        public int Add(int Value1, int Value2)
        {
            return Value1 + Value2;
        }
        public int Subtract(int Value1, int Value2)
        {
            return Value1 - Value2;
        }
        public int Multiply(int Value1, int Value2)
        {
            return Value1 * Value2;
        }
        public double Divide(int Value1, int Value2)
        {
            return Value1 / Value2;
        }
        public string Percentage(int Value1, int Value2)
        {
            Value1 = Value1 * 100;

            return Divide(Value1, Value2) + "%";
        }
    }
}