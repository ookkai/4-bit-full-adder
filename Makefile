VERILOG = iverilog		
TARGET = test.vcd
TARGET_TMP = test.vvp

$(TARGET) : test.vvp
	vvp test.vvp

test.vvp: fadd_4_tb.v fadd_4.v
	$(VERILOG) -o test.vvp fadd_4_tb.v fadd_4.v

clean:
	rm $(TARGET)
	rm $(TARGET_TMP)
