local util = require("carvion.util")

describe("util.blend", function()
  it("should return the background color when alpha is 0", function()
    local result = util.blend("#FF0000", "#000000", 0)

    assert.are.equal("#000000", result)
  end)

  it("should return the foreground color when alpha is 1", function()
    local result = util.blend("#FF0000", "#000000", 1)

    assert.are.equal("#FF0000", result)
  end)

  it("should return the midpoint color when alpha is 0.5", function()
    local result = util.blend("#FFFFFF", "#000000", 0.5)

    assert.are.equal("#808080", result)
  end)

  it("should preserve RGB channel order when blending colors", function()
    local result = util.blend("#FF0000", "#0000FF", 0.5)

    assert.are.equal("#800080", result)
  end)

  it("should return a valid hex string when using small alpha values", function()
    local result = util.blend("#FFFFFF", "#101010", 0.04)

    assert.is_string(result)
    assert.are.equal(7, #result)
    assert.truthy(result:match("^#%x%x%x%x%x%x$"))
  end)
end)

describe("util.lighten", function()
  it("should move black toward gray when amount is 0.5", function()
    local result = util.lighten("#000000", 0.5)

    assert.are.equal("#808080", result)
  end)

  it("should produce progressively lighter colors", function()
    local c1 = util.lighten("#101010", 0.04)
    local c2 = util.lighten("#101010", 0.06)
    local c3 = util.lighten("#101010", 0.08)

    assert.is_not_equal(c1, c2)
    assert.is_not_equal(c2, c3)
  end)
end)

describe("util.darken", function()
  it("should move white toward gray when amount is 0.5", function()
    local result = util.darken("#FFFFFF", 0.5)

    assert.are.equal("#808080", result)
  end)

  it("should produce progressively darker colors", function()
    local c1 = util.darken("#FFFFFF", 0.04)
    local c2 = util.darken("#FFFFFF", 0.06)
    local c3 = util.darken("#FFFFFF", 0.08)

    assert.is_not_equal(c1, c2)
    assert.is_not_equal(c2, c3)
  end)
end)

describe("util.resolve", function()
  it("should merge style attributes into highlight entries", function()
    local groups = {
      Test = {
        fg = "#FFFFFF",
        style = {
          bold = true,
          italic = true,
        },
      },
    }

    local result = util.resolve(groups)

    assert.is_true(result.Test.bold)
    assert.is_true(result.Test.italic)
  end)

  it("should remove style field after resolving", function()
    local groups = {
      Test = {
        fg = "#FFFFFF",
        style = {
          underline = true,
        },
      },
    }

    local result = util.resolve(groups)

    assert.is_nil(result.Test.style)
  end)

  it("should leave entries unchanged when no style exists", function()
    local groups = {
      Test = {
        fg = "#FFFFFF",
      },
    }

    local result = util.resolve(groups)

    assert.are.equal("#FFFFFF", result.Test.fg)
  end)
end)

describe("util.merge", function()
  it("should add new keys from source into destination", function()
    local dest = {
      A = { fg = "#FFFFFF" },
    }

    local src = {
      B = { fg = "#000000" },
    }

    local result = util.merge(dest, src)

    assert.is_not_nil(result.A)
    assert.is_not_nil(result.B)
  end)

  it("should overwrite existing keys with source values", function()
    local dest = {
      A = { fg = "#FFFFFF" },
    }

    local src = {
      A = { fg = "#000000" },
    }

    local result = util.merge(dest, src)

    assert.are.equal("#000000", result.A.fg)
  end)
end)
