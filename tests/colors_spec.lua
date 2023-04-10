local colors = require("lua.themes.colors")

describe("hex2rgb", function()
  it("converts a 6-digit hex color to its RGB values", function()
    local hex_color = "#FF5733"
    local r, g, b = colors.hex2rgb(hex_color)
    assert.are.equal(255, r)
    assert.are.equal(87, g)
    assert.are.equal(51, b)
  end)

  it("converts a hex color without the '#' symbol", function()
    local hex_color = "FF5733"
    local r, g, b = colors.hex2rgb(hex_color)
    assert.are.equal(255, r)
    assert.are.equal(87, g)
    assert.are.equal(51, b)
  end)
end)

describe("rgb2hex", function()
  it("converts RGB values to a 6-digit hex color", function()
    local r, g, b = 255, 87, 51
    local hex_color = colors.rgb2hex(r, g, b)
    assert.are.equal("#ff5733", hex_color)
  end)

  it("converts RGB values with leading zeros to a 6-digit hex color", function()
    local r, g, b = 0, 127, 16
    local hex_color = colors.rgb2hex(r, g, b)
    assert.are.equal("#007f10", hex_color)
  end)
end)
