package DataCycleAllTests;

import com.intuit.karate.junit5.Karate;

class DataCycleAllTestsClass {

	@Karate.Test
    Karate testSample() {
        return Karate.run("DataCycleAllTests").relativeTo(getClass());
        
	}
	
}