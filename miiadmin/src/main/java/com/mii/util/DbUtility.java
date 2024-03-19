package com.mii.util;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DbUtility {

	public static <T> List<T> getListData(String query, Class<T> classType) {
		List<T> list = new ArrayList();
		Connection conn = DBConnection.getConnection();
		PreparedStatement pst;
		ResultSet rs = null;
		try {
			pst = conn.prepareStatement(query);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return getList(rs, classType);
	}

	public static <T> List<T> getList(ResultSet rs, Class<T> classType) {
		List<T> list = new ArrayList();
		T t;
		try {
			while (rs.next()) {
				t = classType.newInstance();
				populatePojo(rs, t);
				list.add(t);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	private static Object populatePojo(ResultSet rs, Object object)
			throws SQLException, IllegalArgumentException, IllegalAccessException {
		Field[] fields = object.getClass().getDeclaredFields();
		for (Field field : fields) {
			String name = field.getName();
			if (hasColumn(rs, name)) {
				field.setAccessible(true);
				Object value = rs.getObject(name);
				Class<?> type = field.getType();
				field.set(object, value);
			}
		}
		return object;
	}
	
	public static boolean hasColumn(ResultSet rs, String columnName) throws SQLException {
	    ResultSetMetaData rsmd = rs.getMetaData();
	    int columns = rsmd.getColumnCount();
	    for (int x = 1; x <= columns; x++) {
	        if (columnName.equals(rsmd.getColumnLabel(x))) {
	            return true;
	        }
	    }
	    return false;
	}
}
