Feature: Calculator
![Calculator](https://specflow.org/wp-content/uploads/2020/09/calculator.png)
Simple calculator for adding **two** numbers

Link to a feature: [Calculator](SpecFlowCalculator.Specs/Features/Calculator.feature)
***Further read***: **[Learn more about how to generate Living Documentation](https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Generating-Documentation.html)**

@Addition
Scenario: Add two numbers
	Given the first number is 50
	And the second number is 70
	When the two numbers are added
	Then the result should be 120

@Multiplication
Scenario: Multiply two numbers
	Given the first number is 5
	And the second number is 3
	When the two numbers are multiply
	Then the result should be 15

@Division
Scenario: Divide two numbers
	Given the first number is 10
	And the second number is 2
	When the two numbers are divide
	Then the result should be 5

@DivisionParZero
Scenario: Divide first number by zero
	Given the first number is 5
	And the second number is 0
	When the two numbers are divide
	Then Exception Impossible de diviser par zéro !! was throw