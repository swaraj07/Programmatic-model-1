/*
--------------------------------------------------------------------
Class: OopsConcepts
Created by: Swaraj Joshi.
--------------------------------------------------------------------
Description: This is a class for Programmatic Model1 Assignment.(OopsConcepts)
--------------------------------------------------------------------
*/
public with sharing class OopsConcepts {
	//Demo of constructor
	public OopsConcepts() {
		System.debug('This is Default Constructor!');
	}
	public OopsConcepts(Integer param) {
		this();
		System.debug('This is Parameterised Constructor!');
	}

	/* Method which will accept Operation and two integer values as Parameter
	and return the result.*/
	public Integer calculator(String operation, Integer num1, Integer num2) {
		if (operation == 'SUM')
		{
			return num1 + num2;
		}
		else if (operation == 'SUB') {
			return num1 - num2;
		}
		else if (operation == 'MUL') {
			return num1 * num2;
		}
		else if (operation == 'DIV') {
			return num1 / num2;
		}
		else {
			System.debug('The operation must be SUM or SUB or MUL or DIV');
			return 0;
		}
	}
}
