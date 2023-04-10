local colors = require("lua.themes.colors")

describe("hex_to_rgb", function()
  it("converts a 6-digit hex color to its RGB values", function()
    local hex_color = "#FF5733"
    local r, g, b = colors.hex_to_rgb(hex_color)
    assert.are.equal(255, r)
    assert.are.equal(87, g)
    assert.are.equal(51, b)
  end)

  it("converts a 3-digit hex color to its RGB values", function()
    local hex_color = "#F53"
    local r, g, b = colors.hex_to_rgb(hex_color)
    assert.are.equal(255, r)
    assert.are.equal(85, g)
    assert.are.equal(51, b)
  end)

  it("converts a hex color without the '#' symbol", function()
    local hex_color = "FF5733"
    local r, g, b = colors.hex_to_rgb(hex_color)
    assert.are.equal(255, r)
    assert.are.equal(87, g)
    assert.are.equal(51, b)
  end)
end)
