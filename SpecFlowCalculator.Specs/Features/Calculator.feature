Feature: Calculator
![Calculator](https://specflow.org/wp-content/uploads/2020/09/calculator.png)
Simple calculator for adding **two** numbers

Link to a feature: [Calculator](SpecFlowCalculator.Specs/Features/Calculator.feature)
***Further read***: **[Learn more about how to generate Living Documentation](https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Generating-Documentation.html)**

@Addition
Scenario: Add two numbers
	Given number is 50
	And number is 70
	When the numbers are added
	Then the result should be 120

@AdditionNMembres
Scenario: Add four numbers
	Given number is 10
	And number is 3
	And number is 8
	And number is 1
	When the numbers are added
	Then the result should be 22


@Multiplication
Scenario: Multiply two numbers
	Given number is 5
	And number is 3
	When the numbers are multiply
	Then the result should be 15

@MultiplicationNMembres
Scenario: Multiply three numbers
	Given number is 5
	And number is 6
	And number is 2
	When the numbers are multiply
	Then the result should be 60


@Division
Scenario: Divide two numbers
	Given number is 10
	And number is 2
	When the numbers are divide
	Then the result should be 5

@DivideNMembres
Scenario: Divide three numbres
	Given number is 100
	And number is 4
	And number is 2
	When the numbers are divide
	Then the result should be 12

@DivisionParZero
Scenario: Divide by zero
	Given number is 5
	And number is 0
	When the numbers are divide
	Then Exception Impossible de diviser par zéro !! was throw