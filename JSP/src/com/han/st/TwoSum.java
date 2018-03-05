package com.han.st;

public class TwoSum {
//	int su1,su2;
	
	public int totalSum(int su1,int su2){
		int sum = 0;
		
		for(int i = su1; i <= su2; i++){
			sum = sum+i;
		}
		return sum;
	}
}
