using System;
using System.Collections.Generic;

namespace SpecFlowCalculator
{
    public class Calculator
    {
        public List<int> Numbers { get; }        


        public Calculator()
        {
            Numbers = new List<int>();
        }

        public int Add()
        {
            int result = 0;

            foreach(int number in Numbers)
            {
                result += number;
            }

            return result;
        }

        public int Multiply()
        {
            int result = Numbers[0];

            for(int i = 1; i < Numbers.Count; i++)
            {
                result *= Numbers[i];   
            }

            return result;
        }

        public int Divide()
        {
            int result = Numbers[0];

            if (Numbers.Contains(0))
            {
                throw new Exception("Impossible de diviser par zéro !!");
            }
            else
            {
                for (int i = 1; i < Numbers.Count; i++)
                {
                    result /= Numbers[i];
                }

                return result;
            }
            
        }
    }
}
