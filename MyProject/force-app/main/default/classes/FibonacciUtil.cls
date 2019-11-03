public with sharing class FibonacciUtil {

    @TestVisible private static List<Integer> fibiSequence = new  List<Integer>();
    private static Boolean isValid = false; 

    public static Boolean checkValidity(List<Integer> toTest){
        //to succesfully craete a fibonacci sequence it needs to have 
        //at least two starting items
        //for this example, first item has to be 0 
        Boolean validList; 
        Integer listSize = toTest.size();
        if (listSize == null) return false; 
        if (listSize == 0) return false;
        if (listSize == 1) return false;
        return true;
    }

    public static Boolean createFibonacci( Integer genSize) {

        if (genSize < 2) return false; 
        //start with 0 (zero) in sequence 
        fibiSequence.add(0);
        if (!checkValidity(fibiSequence))  fibiSequence.add(1);
        
        //get fist 15 items in the Fibonacci sequence
        for ( Integer i=1; i <=genSize; i++){
            Integer seqSize = fibiSequence.size() - 1;
            //calcualte next item in the sequenece by adding up together last and 
            //second to last tiems in the list
            Integer nextItem = fibiSequence[seqSize] + fibiSequence[seqSize -1];
            fibiSequence.add(nextItem);
        }

        //Final sequence of items. 
        System.debug(fibiSequence);
        return true;
    }
    
}
