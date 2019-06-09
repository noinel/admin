package com.around.admin.util;

import java.util.Collections;
import java.util.List;

public class MyUtils {
	public static <E extends Comparable<? super E>> List<E> paging(int page, List<E>  list  ){
		int maxPage = 0;
		int start = (page - 1) * 3;
		int end = page * 3;
		int mod = list.size() % 3; // 0
		if (mod == 0) {
			maxPage = list.size() / 3; // 2
		} else {
			maxPage = list.size() / 3 + 1;

			if (page == maxPage) {
				end = start + mod;
			}
		}

		System.out.println("=================");

		Collections.sort(list);

	
		if(list.size() > 3) {
		list = list.subList(start, end); // 0 3
		}
		return list;
	}

}
