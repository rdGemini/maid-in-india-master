package com.mii.util;

public class CommonUtils {

	public static String getIntInClause(long[] serviceIds) {

		String result = "";
		if (serviceIds.length > 0) {
			StringBuilder sb = new StringBuilder();
			for (long s : serviceIds) {
				sb.append(s).append(",");
			}
			result = sb.deleteCharAt(sb.length() - 1).toString();
		}
		return result;
	}

	public static void main(String[] args) {

		long[] test = { 1, 2, 3 };
		System.out.println(getIntInClause(test));
	}

}
