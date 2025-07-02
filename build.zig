const std = @import("std");
const zine = @import("zine");

pub fn build(b: *std.Build) !void {
    zine.website(b, .{
        .title = "nikon.dev - thoughts, notes and family memoirs by Nikon Sugar",
        .host_url = "https://nikon.dev",
        .layouts_dir_path = "layouts",
        .content_dir_path = "content",
        .assets_dir_path = "assets",
        .static_assets = &.{
            "CNAME",

            // Fonts referenced in CSS files
            "BebasNeue-Regular.ttf",
            "Merriweather/Merriweather-Black.ttf",
            "Merriweather/Merriweather-BlackItalic.ttf",
            "Merriweather/Merriweather-Bold.ttf",
            "Merriweather/Merriweather-BoldItalic.ttf",
            "Merriweather/Merriweather-Italic.ttf",
            "Merriweather/Merriweather-Light.ttf",
            "Merriweather/Merriweather-LightItalic.ttf",
            "Merriweather/Merriweather-Regular.ttf",
        },
    });
}
