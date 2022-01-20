package kr.co.washing.util;

import java.util.ArrayList;
import java.util.List;

public class LevelConfig {
	public static int min = 0;
	public static int max = 1;
	public static List<Integer> getLevelList(){
		List<Integer> list = new ArrayList<>();
		for(int i = min; i <= max; i++) {
			list.add(i);
		}
		return list;
	}
}
