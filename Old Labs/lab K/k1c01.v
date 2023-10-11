module testbench;
    reg[31:0] instruction;
    initial begin
    $display("Time: %5d Instruction: ", $time, instruction);
    #10 instruction = 10;
    $display("Time: %5d Instruction in hex: %16h", $time, instruction);
    $display("Time: %5d Instruction in decimal: %d", $time, instruction);
    $display("Time: %5d Instruction in binary: %b", $time, instruction);
    #20 instruction = 20;
    $display("Time: %5d Instruction in hex: %16h", $time, instruction);
    $display("Time: %5d Instruction in decimal: %d", $time, instruction);
    $display("Time: %5d Instruction in binary: %b", $time, instruction);
    #30 instruction = 30;
    $display("Time: %5d Instruction in hex: %16h", $time, instruction);
    $display("Time: %5d Instruction in decimal: %d", $time, instruction);
    $display("Time: %5d Instruction in binary: %b", $time, instruction);
    $finish;
    end
endmodule