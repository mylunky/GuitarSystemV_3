package com.guitar.test;

import java.util.List;

import com.guitar.domain.Guitar;
import com.guitar.domain.GuitarSpec;
import com.guitar.domain.Inventory;

public class TestClass {
	public static void main(String[] args) {
		GuitarSpec guitarSpec = new GuitarSpec("builder","model","type","backWood","topkWood");
		Inventory inventory = new Inventory();
		System.out.println("查询吉他*********");
		inventory.addGuitar("0000001", 100.00, guitarSpec);
		List<Guitar> list = inventory.searchGuitar("no");
		for (Guitar guitar : list) {
			System.out.println(guitar.getSerialNumber()+"--"+guitar.getPrice());
		}
		inventory.delGuitar("00131231");
		System.out.println("删除后查询程序*********");
		List<Guitar> list2 = inventory.searchGuitar("no");
		for (Guitar guitar : list2) {
			System.out.println(guitar.getSerialNumber()+"--"+guitar.getPrice());
		}
	}
}
