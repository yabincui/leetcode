include gmsl-1.1.7/gmsl

UnitTestList := BestTimeToBuyAndSellStockIVTest WildcardMatchingTest \
                TheSkylineProblemTest ShortestPalindromeTest \

all: $(call last,$(UnitTestList))


JUNIT_MAIN = org.junit.runner.JUnitCore

%.class : %.java
	javac $<

%Test: %.class %Test.class
	java $(JUNIT_MAIN) $@

clean:
	rm -rf *.class
