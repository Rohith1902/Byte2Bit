module counteven;
	int arr[] = '{11,20,35,67,82,90,71,93};
	int even_count ;
	
	initial begin 
		even_count = 0;
		
		foreach (arr[i]) begin 

			if(arr[i] % 2 == 0) 
				even_count++;

		end
	$display("Number of even elemnt is %0d ",even_count);
	
	end
endmodule

