@isTest
private class CalculatorTest {

    @isTest
    private static void addTest() {
        // Test data setup

        // Actual test
        Test.startTest();
            Calculator cal = new Calculator();
            integer res  = cal.add(10, 5);            
        Test.stopTest();
        system.assertEquals(15, res);

        // Asserts
    }
    @isTest
    private static void subTest(){
        Test.startTest();
            Calculator cal = new Calculator();
            integer res  = cal.sub(10, 50);            
        Test.stopTest();
        system.assertEquals(-5, res);
    }


}
