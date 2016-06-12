package com.guitar.service;

import java.util.List;

import com.guitar.dao.GuitarDaoSqliteFactory;
import com.guitar.dao.IGuitarDao;
import com.guitar.dao.IGuitarDaoFactory;
import com.guitar.domain.Guitar;
import com.guitar.domain.GuitarSpec;

public class GuitarServiceDB implements IGuitarService {
	 IGuitarDaoFactory factory = new GuitarDaoSqliteFactory(); IGuitarDao
	 guitarDao = factory.createIGDao();

	@Override
	public int addGuitar(String serialNumber, double price, GuitarSpec spec) {
		int i = guitarDao.addGuitar(serialNumber, price, spec);
		return i;
	}

	@Override
	public List<Guitar> searchGuitar(String serialNumber) {
		List<Guitar> list = guitarDao.searchGuitar(serialNumber);
		return list;
	}

	@Override
	public int delGuitar(String serialNumber) {
		int i = guitarDao.delGuitar(serialNumber);
		return i;
	}

}
