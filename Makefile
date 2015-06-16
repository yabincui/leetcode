include gmsl-1.1.7/gmsl

UnitTestList := BestTimeToBuyAndSellStockIVTest WildcardMatchingTest \
                TheSkylineProblemTest ShortestPalindromeTest \
                WordSearchII.class ImplementStackUsingQueues.class InvertBinaryTree.class \
                BasicCalculator.class RectangleArea.class CountCompleteTreeNodes.class \
                MaximalSquareTest ContainsDuplicate.class ContainsDuplicateII.class \
                ContainsDuplicateIII.class MaximalProductSubarrayTest \
                FindMinimumInRotatedSortedArray.class FindMinimumInRotatedSortedArrayII.class \
                MinStack.class IntersectionOfTwoLinkedLists.class FindPeakElement.class \

all: $(call last,$(UnitTestList))


JUNIT_MAIN = org.junit.runner.JUnitCore

%.class : %.java
	javac $<

%Test: %.class %Test.class
	java $(JUNIT_MAIN) $@

clean:
	rm -rf *.class
