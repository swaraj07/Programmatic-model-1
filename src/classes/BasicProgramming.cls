/*
--------------------------------------------------------------------
Class: BasicProgramming
Created by: Swaraj Joshi.
--------------------------------------------------------------------
Description: This is a class for Programmatic Model1 Assignment.(BasicProgramming)
--------------------------------------------------------------------
*/
public with sharing class BasicProgramming {
    //Default Constructor.
    public BasicProgramming() {

    }

    //Functuion to determine & print the number is even or odd
    public String determineEvenOdd(Integer number1) {
        return Math.mod(number1, 2) == 0 ? 'Even' : 'Odd';
    }

    /*Method which accepts integer parameter
    and build an print array of upto that integer parameter.
    */
    public Void printArray(Integer arraySize) {
        if (arraySize<=0) {
            System.debug('Array size must be greater than 0.');
        }
        else {
            Integer[] myArray = new Integer[arraySize];
            for(Integer i = 0; i < arraySize; i++) {
                    myArray[i] = (i + 1) * 10;
            }
            for (Integer i = 0; i < myArray.size(); i++) {
                System.debug('Array element at ' + i + 'is' + myArray[i]);
            }
        }
    }

    /*
    Method which will accept array of integers as parameters write a code to
            a. Sort the array in ascending order
            b. Sort the array in descending order
            c. Print the Maximum number in the array
            d. Print the Minimum number in the array
            e. Print duplicates and its occurrences in the array
    */
    public Void arrayOperations(Integer[] inputArray) {
        //Sort Array.
        inputArray.Sort();

        //Print Sorted array in ascending order.
        System.debug('Assending oreder');
        for(Integer i = 0; i < inputArray.size(); i++) {
            System.debug('Array element at ' + i + 'is' + inputArray[i]);
        }

        //Print Sorted array in descending order.
        System.debug('Descending oreder');
        for(Integer i = inputArray.size()-1; i >= 0 ; i--) {
            System.debug('Array element at ' + i + 'is' + inputArray[i]);
        }

        //Print the Maximum number in the array
        Integer maxValue = 0;
        for (Integer value : inputArray) {
            if(value > maxValue) {
                maxValue = value;
            }
        }
        System.debug('Max: '+ maxValue);

        //Print the Minimum number in the array
        Integer minValue = inputArray[0];
        for (Integer value : inputArray) {
            if(value < minValue) {
                minValue = value;
            }
        }
        System.debug('Min: '+ minValue);

        //Print duplicates and its occurrences in the array.
        System.debug('Duplication count.');
        Map<Integer, Integer> duplicateCount = new Map<Integer, Integer>();
        for (Integer key : inputArray) {
            if (!duplicateCount.containsKey(key)) {
                duplicateCount.put(key,1);
            }
            else {
                Integer keyCount = duplicateCount.get(key)+1;
                duplicateCount.put(key,keyCount);
            }
        }

        for (Integer key : duplicateCount.keySet()) {
            System.debug(key + ' : ' + duplicateCount.get(key));
        }
    }

	//Method to display the summation of numbers from zero to parameter number
	public Void displaySum(Integer inputNumber) {
		Integer sum = 0;
		for(Integer i = 1; i < inputNumber+1; i++) {
			sum += i;
		}
		System.debug('Sum for '+ inputNumber + ' is '+ sum);
	}

	//Method which will calculate the simple interest
	public Decimal calculateSI(Integer princial, Decimal rate, Integer duration) {
		Decimal simpleInterest;
		if (princial<0 || rate<0 || rate>100 || duration<0) {
				System.debug('Please enter valid parameters.');
		}
		else {
			simpleInterest = (princial * rate * duration)/100;
		}
		return simpleInterest;
	}
}
