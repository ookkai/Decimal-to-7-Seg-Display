VERILOG = iverilog		
TARGET = test.vcd
TARGET_TMP = test.vvp

$(TARGET) : test.vvp
	vvp test.vvp

test.vvp: Dec_7Seg_tb.v Dec_7Seg.v
	$(VERILOG) -o test.vvp Dec_7Seg_tb.v Dec_7Seg.v

clean:
	rm $(TARGET)
	rm $(TARGET_TMP)
