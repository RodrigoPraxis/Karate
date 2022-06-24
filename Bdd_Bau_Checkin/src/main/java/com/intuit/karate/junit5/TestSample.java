package com.intuit.karate.junit5;

import com.intuit.karate.junit5.Karate;

class TestSample {
    
    @Karate.Test
   Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
    
}
