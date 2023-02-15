package com.chart;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtils;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;

import java.sql.*;

@WebServlet("/XYPlotServlet")
public class XYPlotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String DB_URL = "";
	private static final String DB_ID = "";
	private static final String DB_PASS = "";
	
	public void init() throws ServletException {
		try {
			
			// 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			Connection con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl", 
					"scott", "tiger");
			
			Statement st = con.createStatement();
			String sql = "select value from stock";
			ResultSet rs = st.executeQuery(sql);
			XYSeries vs = new XYSeries("Stock Flow");
			
			int x = 1;
			
			while(rs.next()) {
				vs.add(x, rs.getInt(1));
				x += 1;
			}
			
			XYSeriesCollection ds = new XYSeriesCollection(vs);
			
			JFreeChart chart = ChartFactory.createXYLineChart("Stock Average", "Day", "Price", ds, PlotOrientation.VERTICAL, true, true, true);
			
			ServletOutputStream out = response.getOutputStream();
			ChartUtils.writeChartAsJPEG(out, chart, 400, 400);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
