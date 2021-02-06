// Izzy Ehnes
// encoder8to3.v, 8-to-3 encoder, gate synthesis

module EncoderMod(i0, i1, i2, i3, i4, i5, i6, i7, o2, o1, o0);
    input i0, i1, i2, i3, i4, i5, i6, i7
    output o2, o1, o0

    or(o2, i4, i5, i6, i7)
    or(o1, i2, i3, i6, i7)
    or(o0, i1, i3, i5, i7)
end module

module TestMod;
    reg i0, i1, i2, i3, i4, i5, i6, i7
    wire o2, o1, o0

    EncoderMod my_encoder(i0, i1, i2, i3, i4, i5, i6, i7, o2, o1, o0);

    initial begin
        $display("Time  i0  i1  i2  i3  i4  i5  i6  i7   o2  o1  o0");
        $display("----  ------------------------------   ----------");
        $monitor("   %0d   %b   %b   %b   %b   %b   %b   %b   %b    %b   %b   %b",
            $time, i0, i1, i2, i3, i4, i5, i6, i7, o2, o1, o0);
    end

endmodule