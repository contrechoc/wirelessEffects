package com.contrechoc.wireless_patterns;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;


import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;

public class MainActivity extends Activity {
	
	private boolean netWorkAvailable = false;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		  final ImageButton button1 = (ImageButton) findViewById(R.id.imageButton1);
	         button1.setOnClickListener(new View.OnClickListener() {
	             public void onClick(View v) {
	            	 checkNetwork();
	            	 if (netWorkAvailable){
	                	 getConnection("http://www.contrechoc.com/exovest/setLED.php?value=1");
	                 }
	             }
	         });
	         
	         final ImageButton button2 = (ImageButton) findViewById(R.id.imageButton2);
	         button2.setOnClickListener(new View.OnClickListener() {
	             public void onClick(View v) {
	            	 checkNetwork();
	            	 if (netWorkAvailable){
	                	 getConnection("http://www.contrechoc.com/exovest/setLED.php?value=2");
	                 }
	             }
	         });
	         
			  final ImageButton button3 = (ImageButton) findViewById(R.id.imageButton3);
		         button3.setOnClickListener(new View.OnClickListener() {
		             public void onClick(View v) {
		            	 checkNetwork();
		            	 if (netWorkAvailable){
		                	 getConnection("http://www.contrechoc.com/exovest/setLED.php?value=3");
		                 }
		             }
		         });
		         
		         final ImageButton button4 = (ImageButton) findViewById(R.id.imageButton4);
		         button4.setOnClickListener(new View.OnClickListener() {
		             public void onClick(View v) {
		            	 checkNetwork();
		            	 if (netWorkAvailable){
		                	 getConnection("http://www.contrechoc.com/exovest/setLED.php?value=4");
		                 }
		             }
		         });
		         
				  final ImageButton button5 = (ImageButton) findViewById(R.id.imageButton5);
			         button5.setOnClickListener(new View.OnClickListener() {
			             public void onClick(View v) {
			            	 checkNetwork();
			            	 if (netWorkAvailable){
			                	 getConnection("http://www.contrechoc.com/exovest/setLED.php?value=5");
			                 }
			             }
			         });
			         
			         final ImageButton button6 = (ImageButton) findViewById(R.id.imageButton6);
			         button6.setOnClickListener(new View.OnClickListener() {
			             public void onClick(View v) {
			            	 checkNetwork();
			            	 if (netWorkAvailable){
			                	 getConnection("http://www.contrechoc.com/exovest/setLED.php?value=6");
			                 }
			             }
			         });
			         
					  final ImageButton button7 = (ImageButton) findViewById(R.id.imageButton7);
				         button7.setOnClickListener(new View.OnClickListener() {
				             public void onClick(View v) {
				            	 checkNetwork();
				            	 if (netWorkAvailable){
				                	 getConnection("http://www.contrechoc.com/exovest/setLED1.php");
				                 }
				             }
				         });
				         
				         final ImageButton button8 = (ImageButton) findViewById(R.id.imageButton8);
				         button8.setOnClickListener(new View.OnClickListener() {
				             public void onClick(View v) {
				            	 checkNetwork();
				            	 if (netWorkAvailable){
				                	 getConnection("http://www.contrechoc.com/exovest/setLED0.php");
				                 }
				             }
				         });
	         
			 
	         
	         
	         
	         
	}

 
	
	private void checkNetwork(){
		netWorkAvailable = isNetworkAvailable();
		if ( !netWorkAvailable ){
			//TextView t = (TextView)findViewById(R.id. );
			 //   t.setText("Network not available");
		}else{
			//TextView t = (TextView)findViewById(R.id.editText2);
		   // t.setText("Network available");
		}
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	
	public void getConnection(String urlString){
		try {
			  URL url = new URL(urlString);
			  HttpURLConnection con = (HttpURLConnection) url
			    .openConnection();
			  readStream(con.getInputStream());
			  } catch (Exception e) {
			  e.printStackTrace();
			}
	}
	
	private void readStream(InputStream in) {
		  BufferedReader reader = null;
		  try {
		    reader = new BufferedReader(new InputStreamReader(in));
		    String line = "";
		    while ((line = reader.readLine()) != null) {
		      System.out.println(line);
		     // TextView t = (TextView)findViewById(R.id.editText1);
			  //.setText(line);
		    }
		  } catch (IOException e) {
		    e.printStackTrace();
		  } finally {
		    if (reader != null) {
		      try {
		        reader.close();
		      } catch (IOException e) {
		        e.printStackTrace();
		        }
		    }
		  }
	}
	
	public boolean isNetworkAvailable() {
		 ConnectivityManager cm =
			        (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
			    NetworkInfo netInfo = cm.getActiveNetworkInfo();
			    if (netInfo != null && netInfo.isConnectedOrConnecting()) {
			        return true;
			    }
			    return false;
	}

}
