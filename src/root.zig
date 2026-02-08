const std = @import("std");

pub const Shape = @import("Shape.zig");
pub const zmesh_io = @import("io.zig");
pub const opt = @import("zmeshoptimizer.zig");

pub const mem = @import("memory.zig");

pub fn init(alloc: std.mem.Allocator, io: std.Io) void {
    mem.init(alloc, io);
}

pub fn deinit() void {
    mem.deinit();
}

test {
    std.testing.refAllDecls(@This());
}
