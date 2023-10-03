package model;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ReadSheet {
	
	static XSSFRow row;
			//Reading Excel File
			public List<String> readCourses() throws IOException{
				
				    List<String> allCourses=new ArrayList<String>();
				    
					  //Excel File Location
				      FileInputStream fis = new FileInputStream(new File("C:\\Users\\Hsu Shune Lai\\Desktop\\Lithan\\Module5\\TrainingDepartment\\TrainingDepartmentCourse\\src\\main\\webapp\\CourseLists.xlsx"));
				      
				      //Prepare to read the excel data
				      XSSFWorkbook workbook = new XSSFWorkbook(fis);
				      
				      //Define Which Sheet of data you want to read
				      XSSFSheet spreadsheet = workbook.getSheetAt(0);
				      
				      //looping the row
				      Iterator < Row > rowIterator = spreadsheet.iterator();
				      
				      while (rowIterator.hasNext()) {
				    	 //check next row
				         row = (XSSFRow) rowIterator.next();
				         
				         //Loop the column (cell)
				         Iterator < Cell > cellIterator = row.cellIterator();
				         
				         //check next cell or not
				         while ( cellIterator.hasNext()) {
				            Cell cell = cellIterator.next();
				            
				            String celldata=cell.getStringCellValue();

				            
				            
				            //put the data to the arraylist
				            allCourses.add(celldata);
				        
				            
				            }//end cell loop
				         
				         
				         }//end row loop
				      
				         System.out.println();
				      fis.close();
				 
					return allCourses;
			}
}

