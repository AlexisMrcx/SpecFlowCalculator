Feature: Calculator
![Calculator](https://specflow.org/wp-content/uploads/2020/09/calculator.png)
Simple calculator for adding **two** numbers
Link to a feature: [Calculator](SpecFlowCalculator.Specs/Features/Calculator.feature)
***Further read***: **[Learn more about how to generate Living Documentation](https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Generating-Documentation.html)**

@Addition
Scenario: Add two numbers
	Given the followings numbers exist:
		| number |
		| 50     |
		| 70     |
	When the numbers are added
	Then the result should be 120

@AdditionNMembres
Scenario: Add four numbers
	Given the followings numbers exist:
		| number |
		| 10     |
		| 3      |
		| 8      |
		| 1      |
	When the numbers are added
	Then the result should be 22

@Multiplication
Scenario: Multiply two numbers
	Given the followings numbers exist:
		| number |
		| 5      |
		| 3      |
	When the numbers are multiply
	Then the result should be 15

@MultiplicationNMembres
Scenario: Multiply three numbers
	Given the followings numbers exist:
		| number |
		| 5      |
		| 6      |
		| 2      |
	When the numbers are multiply
	Then the result should be 60

@Division
Scenario: Divide two numbers
	Given the followings numbers exist:
		| number |
		| 10     |
		| 2      |
	When the numbers are divide
	Then the result should be 5

@DivideNMembres
Scenario: Divide three numbres
	Given the followings numbers exist:
		| number |
		| 100    |
		| 4      |
		| 2      |
	When the numbers are divide
	Then the result should be 12

@DivisionParZero
Scenario: Divide by zero
	Given the followings numbers exist:
		| number |
		| 5      |
		| 0      |
	When the numbers are divide
	Then Exception Impossible de diviser par zéro !! was throw