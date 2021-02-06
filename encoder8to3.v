// Izzy Ehnes
// encoder8to3.v, 8-to-3 encoder, gate synthesis

module EncoderMod(i0, i1, i2, i3, i4, i5, i6, i7, o2, o1, o0);
    input i0, i1, i2, i3, i4, i5, i6, i7
    output o2, o1, o0

    or(o2, i4, i5, i6, i7)
    or(o1, i2, i3, i6, i7)
    or(o0, i1, i3, i5, i7)
end module
