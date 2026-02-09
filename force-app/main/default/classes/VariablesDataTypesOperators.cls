/**
 * This is the VariablesDataTypesOperators class, part of the Developer Kickstart Module 1 curriculum 
 * at Cloud Code Academy. This class serves as an introduction to the basic elements of Apex programming 
 * including variables, data types, and operators.
 * 
 * This class is an essential tool for beginner developers who are just starting their journey in Salesforce 
 * development. It covers all the foundational elements necessary to understand and write Apex code effectively.
 * 
 * Topics covered in this class include:
 * - Understanding different data types in Apex such as Integer, Decimal, Double, String, Boolean, etc.
 * - Understanding how to declare and use variables in Apex.
 * - Understanding how to use various types of operators in Apex including arithmetic operators, 
 *   comparison operators, logical operators, and more.
 *
 * Users of this class can expect to gain a strong foundation in Apex programming and be prepared for 
 * more advanced topics in Salesforce development.
 * 
 * If statements are not specifically covered in the lesson this module, but review module 2 flow control section for an overview if needed.
 * Resources: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_if_else.htm 
 * 
 * @author Thayne Rodrigo
 */

public with sharing class VariablesDataTypesOperators {
    /**
     * Question 1 (DONE)
     * Performs addition of two numbers.
     * If either of the numbers is null, return null.
     * Example: addition(1, 2) should return 3
     * @param a The first number.
     * @param b The second number.
     * @return The sum of the two numbers, or null if either number is null.
     */
    public static Integer addition(Integer a, Integer b) {
        Integer result;
       if (a == null || b == null) {
        result = null; 
       } else {
        result = a + b;
       }
        return result; 
       } 

    /**
     * Question 2 (DONE)
     * Performs subtraction of two numbers.
     * Example: subtraction(1, 2) should return -1
     * @param a The first number.
     * @param b The second number.
     * @return The difference between the two numbers.
     */
    public static Integer subtraction(Integer a, Integer b) {
        Integer result = a - b;
        return result; 
    }

    /**
     * Question 3 (DONE)
     * Performs multiplication of two numbers.
     * Example: multiplication(2, 3) should return 6
     * @param a The first number.
     * @param b The second number.
     * @return The product of the two numbers.
     */
    public static Integer multiplication(Integer a, Integer b) {
        Integer result = a * b;
        return null; 
    }

    /**
     * Question 4 (DONE)
     * Performs division of two numbers.
     * If the denominator is zero, return 0 to avoid division by zero error.
     * Example: division(6, 3) should return 2
     * @param a The numerator.
     * @param b The denominator.
     * @return The quotient of the division, or 0 if the denominator is zero.
     */
    public static Double division(Double a, Double b) {
        Double result;
        if (b == 0) {
            result = 0;
        } else {
            result = a / b;
        } 
        return result;
    }

    /**
     * Question 5 (DONE)
     * Checks if a number is even.
     * Example: isEven(2) should return true
     * This concept is not specifically covered in the content this week, but you can use the Math class and the modulus function to understand if the number is even or odd.
     * The modulus function returns the remainder of a division operation, think about how you can use this to determine if a number is even or odd. 
     * Resources: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm#apex_System_Math_mod
     * @param num The number to check.
     * @return True if the number is even, False otherwise.
     */
    public static Boolean isEven(Integer num) {
        Boolean result;
        if (math.mod(num,2) == 0) {
            result = true;           
        } else {
            result = false;
        }
        return result; 
    }

    /**
     * Question 6 (DONE)
     * Checks if a number is positive.
     * Example: isPositive(2) should return true
     * @param num The number to check.
     * @return true if the number is positive, false otherwise.
     */
    public static Boolean isPositive(Integer num) {
        Boolean result;
        if (num >= 0) { result = true;
            
        } else {
            result = false;
        }
        return result;
    }

    /**
     * Question 7 (DONE)
     * Concatenates two strings.
     * Example: concatenateStrings('Hello', 'World') should return 'HelloWorld'
     * @param str1 The first string.
     * @param str2 The second string.
     * @return The concatenated string.
     */
    public static String concatenateStrings(String str1, String str2) {
        String result = str1 + str2; 
        return result; 
    }

	/**
     * Question 8 (DONE)
	 * Constructs a sentence by concatenating a given noun, verb, and ending punctuation.
	 * The sentence is structured to begin with 'The', followed by the noun, then 'is', the verb, and finally the ending punctuation.
	 * Example: createSentence('cat', 'jumping', '!') should return 'The cat is jumping!'
	 * Example: createSentence('bird', 'flying', '.') should return 'The bird is flying.'
	 * @param noun The noun or subject of the sentence.
	 * @param verb The verb or action of the sentence.
	 * @param endingPunctuation The punctuation to end the sentence, e.g., '.', '!', '?'
	 * @return The complete sentence as a single String.
	 */
	public static String createSentence(String noun, String verb, String endingPunctuation) {
        String result = 'The ' + noun + ' is ' + verb + endingPunctuation;
		return result;
	}

    /**
     * Question 9 (DONE)
     * Checks if a date is in the past.
     * Example: isDateInPast(Date.newInstance(2019, 1, 1)) should return true
     * The concept of getting the current date is not specifically covered in the content this week, but you can use the Date class to get the current date.
     * Resources: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm#apex_System_Date_today
     * @param dt The date to check.
     * @return True if the date is in the past, False otherwise.
     */
    public static Boolean isDateInPast(Date dt) {
        Boolean result;
        if (dt < date.today()) {
            result = true;            
        } else {
            result = false;
        }
        return result; 
    }

    /**
     * Question 10 (DONE)
     * Checks if a date is today or in the future.
     * Example: isDateTodayOrFuture(Date.newInstance(2019, 1, 1)) should return false
     * The concept of getting the current date is not specifically covered in the content this week, but you can use the Date class to get the current date.
     * Resources: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm#apex_System_Date_today
     * @param dt The date to check.
     * @return True if the date is today or in the future, False otherwise.
     */
    public static Boolean isDateTodayOrFuture(Date dt) {
           Boolean result;
        if (dt >= date.today()) {
            result = true;            
        } else {
            result = false;
        }
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 11 (DONE)
     * Converts the number of minutes to milliseconds.
     * The conversion factor from minutes to milliseconds is a constant of 60000.
     * Formula: Milliseconds = minutes * 60000
     * Example: convertMinutesToMilliseconds(1) should return 60000
     * @param minutes The number of minutes.
     * @return The number of milliseconds equivalent to the given number of minutes.
     */
    // Make this value a constant
    public static Integer convertMinutesToMilliseconds(Integer minutes) {
        Integer milliseconds;
        Integer MILLISECONDS_PER_MINUTE = 60000;
        milliseconds = (minutes * MILLISECONDS_PER_MINUTE);
        return milliseconds; // Replace null with the variable you used to store the result
    }    

    /**
     * Question 12 (DONE)
     * Calculates the average of three numbers.
     * Formula: Average = (Sum of Numbers) ÷ (Total Numbers)
     * Example: averageOfThreeNumbers(1, 2, 3) should return 2
     * @param a The first number.
     * @param b The second number.
     * @param c The third number.
     * @return The average of the three numbers.
     * 
     * TR: I know I could have written it in a more streamlined way (result = sumOfNumbers / 3) OR (result = (a+b+c)/3), but I wanted to write it
     * this way to reinforce the use of variables for practice.
     */
    public static Double averageOfThreeNumbers(Integer a, Integer b, Integer c) {
        Integer sumOfNumbers = (a + b + c);
        Integer totalNumbers = 3;
        Integer result = (sumOfNumbers / totalNumbers);
        return result;
    }

    /**
     * Question 13 (DONE)
     * Adjusts the order of operations in an arithmetic expression to produce a desired result.
     * In this case, parentheses are added to the expression (5 + 7) * 3 to ensure that addition is performed before multiplication.
     * Example: adjustOrderOfOperations1(5, 7, 3) should return 36
     * @param a The first number.
     * @param b The second number.
     * @param c The third number.
     * @return The result of the adjusted arithmetic expression.
     */
    public static Integer adjustOrderOfOperations1(Integer a, Integer b, Integer c) {
        Integer result = (a + b) * c;
        return result; 
    }

    /**
     * Question 14 (DONE)
     * Modifies the expression to adhere to PEMDAS rules in order to change its result.
     * @return The result of the expression after modifications.
     */
    public static Integer adjustOrderOfOperations2() {
        // Add parentheses in the below expression to change the result.
        // The result of the expression as it is right now is 43. 
        // You should add parentheses so that the result of the expression becomes 8.
        Integer answer = 48 - ((15 + 5) * 2);
        return answer;
    }

    /**
     * Question 15 (DONE)
     * Adjusts the order of operations in an arithmetic expression to produce a desired result.
     * In this case, parentheses are added to the expression (a * b - c) / d + e to ensure that 
     * multiplication and subtraction are performed before division, which in turn is performed 
     * before addition.
     * Example: adjustOrderOfOperations3(1, 2, 3, 4, 5) should return 4.75
     * @param a The first number.
     * @param b The second number.
     * @param c The third number.
     * @param d The fourth number.
     * @param e The fifth number.
     * @return The result of the adjusted arithmetic expression.
     */
    public static Double complexOrderOfOperations(Integer a, Integer b, Integer c, Integer d, Integer e) {
        // Add parentheses around the multiplication and subtraction operations so that they are performed before division and addition
        Double result = ((a * b )- c) / (Double) d + e;
        return result;
    }

    /**
     * Question 16 (DONE)
     * Converts the temperature from Fahrenheit to Celsius.
     * Formula: Celsius = (Fahrenheit - 32) * 5/9.
     * @param fahrenheit The temperature in Fahrenheit.
     * @return The temperature in Celsius equivalent to the given Fahrenheit temperature.
     */
    public static Double convertFahrenheitToCelsius(Double fahrenheit) {
        final Double SUBTRACT_FACTOR = 32.0;
        final Double MULTIPLY_FACTOR = 5.0;
        final Double DIVIDE_FACTOR = 9.0;
        Double result = (fahrenheit - SUBTRACT_FACTOR) * MULTIPLY_FACTOR/DIVIDE_FACTOR; 
        return result;
    }


    /**
     * Question 17 (DONE)
     * Performs division and returns the result as a casted Integer.
     * It should cast the result to an Integer.
     * Example: 3 / 2 => 1.5 should return 1
     * @param a The numerator.
     * @param b The denominator.
     * @return The quotient as a casted (round down) Integer.
     */
    public static Integer performDivisionAndCast(Double a, Double b) {
        Double divisionResult =  (Integer) a/b;
        Integer roundedResult = (Integer) divisionResult;
        return roundedResult;
    }

    /**
     * Question 18 (DONE)
     * Calculate the weekly paycheck based on hourly rate and number of hours.
     * Weekly Paycheck is calculated by the formula: rate multiplied by hours.
     * Example: calculateWeeklyPaycheck(10.0, 40.0) should return 400.0
     * @param hourlyRate The rate of pay per hour.
     * @param numberOfHours The number of hours worked in a week.
     * @return A Decimal representing the weekly paycheck.
     * 
     * TR: Hey teach. I managed to get it right the first time, (WHERE return hourlyRate * (decimal) numberofHours) but when I checked to see if it would make a difference 
     * if I wrote 'return hourlyRate * numberOfHours', I saved > deployed > and ran a test and it worked as well... It shouldn't, though, right?
     * Unless there's some sort of hierarchy involved WHERE if multiplying a lower data type to-
     * -a higher data type would convert the final value to the higher data type? I'm leaving it with the latter for your review.
     */
    public static Decimal calculateWeeklyPaycheck(Decimal hourlyRate, Double numberOfHours) {
        return hourlyRate * numberOfHours;
    }

    /**
     * Question 19 (DONE)
     * Calculate the monthly paycheck based on hourly rate and number of hours.
     * Weekly Paycheck is calculated by the formula: rate multiplied by hours.
     * Monthly Paycheck is calculated by the formula: weekly paycheck multiplied by 4.
     * Example: calculateMonthlyPaycheck(10.0, 40.0) should return 1600.0
     * @param hourlyRate The rate of pay per hour.
     * @param numberOfHours The number of hours worked in a week.
     * @return A Decimal representing the monthly paycheck.
     * 
     * TR: Hey again. I know I could ignore the 'decimal result' line and just write the 'return result = formula', but just wanted to showcase to the reader that the result variable
     * was written to store a decimal value.
     */
    public static Decimal calculateMonthlyPaycheck(Decimal hourlyRate, Double numberOfHours) {
        Decimal result = (hourlyRate * numberOfHours) * 4;
        return result; 
    }

    /**
     * Question 20 (DONE)
     * Calculates the total cost based on price per unit, number of units, and a sales tax rate.
     * Total cost is calculated by the formula: (pricePerUnit * numberOfUnits) * (1 + salesTaxRate).
     * Example: calculateTotalCost(1.0, 2, 0.05) should return 2.1
     * @param pricePerUnit The price per unit of the item.
     * @param numberOfUnits The number of units purchased.
     * @param salesTaxRate The sales tax rate as a decimal (e.g., 0.05 for 5% tax).
     * @return The total cost after applying the sales tax.
     * 
     * Hi teach, so I ran this "Decimal totalCost = (pricePerUnit * numberOfUnits) * (1 + salesTaxRate);
        return totalCost;
    }" and it works fine. I did look this up and I can see that we can work with rules of conversions for some data types like the numeric types. Interesting!
    I'm going to detail out the code for my practice, but also just want to note that I did find the above.
     */
    public static Decimal calculateTotalCost(Decimal pricePerUnit, Integer numberOfUnits, Decimal salesTaxRate) {
        Decimal totalCost = (pricePerUnit * (Decimal)numberOfUnits) * (1 + salesTaxRate);
        return totalCost;
    }
}
