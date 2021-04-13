using TechTalk.SpecFlow;
using FluentAssertions;
using System;

namespace SpecFlowCalculator.Specs.Steps
{
    [Binding]
    public sealed class CalculatorStepDefinitions
    {

        // For additional details on SpecFlow step definitions see https://go.specflow.org/doc-stepdef

        private readonly ScenarioContext _scenarioContext;

        private readonly Calculator _calculator = new Calculator();
        private int _result;
        private string _exception;

        public CalculatorStepDefinitions(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
        }

        [Given("the followings numbers exist:")]
        public void GivenNumbers(Table numbers)
        {
            foreach (TableRow row in numbers.Rows)
            {
                _calculator.Numbers.Add(int.Parse(row[0]));
            }
        }

        [When("the numbers are added")]
        public void WhenTheTwoNumbersAreAdded()
        {
            _result = _calculator.Add();
        }

        [When("the numbers are multiply")]
        public void WhenTheTwoNumbersAreMultiply()
        {
            _result = _calculator.Multiply();
        }

        [When("the numbers are divide")]
        public void WhenTheTwoNumbersAreDivide()
        {
            try
            {
                _result = _calculator.Divide();
            }
            catch (Exception ex)
            {
                _exception = ex.Message;
            }

        }

        [Then("the result should be (.*)")]
        public void ThenTheResultShouldBe(int result)
        {
            _result.Should().Be(result);
        }

        [Then("Exception (.*) was throw")]
        public void ThenExceptionThrow(string message)
        {
            _exception.Should().Be(message);
        }
    }
}
