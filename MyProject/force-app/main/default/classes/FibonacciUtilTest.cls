@isTest
private class  FibonacciUtilTest {

    @isTest static void testFailMethod() {
        Integer SeqSize = 0;
        Boolean result = FibonacciUtil.createFibonacci(SeqSize);
        System.assertEquals(false, result);
    }

    @isTest static void testPassMethod() {
        Integer SeqSize = 2;
        Boolean result = FibonacciUtil.createFibonacci(SeqSize);
        List<Integer> finalSequence = FibonacciUtil.fibiSequence;
        System.assertEquals(true, result);
        System.assertEquals(1, finalSequence[1]);
    }
}
