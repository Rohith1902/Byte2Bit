module sec(
    input logic [7:0] arr [7:0],
    output logic [7:0] second
);
    logic [7:0] fir;
    always_comb begin
        
        fir = arr[0];
        second = arr[0];
        
        foreach(arr[i])begin
            if(arr[i]>fir)
                fir = arr[i];
        end


        foreach(arr[i]) begin
            if((arr[i]>second)&&(arr[i]<fir)) 
                second = arr[i];
        end
    end

endmodule 


