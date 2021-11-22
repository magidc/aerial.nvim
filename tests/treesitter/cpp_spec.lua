local util = require("tests.test_util")

describe("treesitter cpp", function()
  it("parses all symbols correctly", function()
    util.test_file_symbols("treesitter", "./tests/treesitter/cpp_test.cpp", {
      {
        kind = "Function",
        name = "fn_1",
        level = 0,
        lnum = 1,
        col = 0,
      },
      {
        kind = "Struct",
        name = "st_1",
        level = 0,
        lnum = 3,
        col = 0,
      },
      {
        kind = "Struct",
        name = "st_2",
        level = 0,
        lnum = 5,
        col = 0,
      },
      {
        kind = "Enum",
        name = "en_1",
        level = 0,
        lnum = 8,
        col = 0,
      },
      {
        kind = "Class",
        name = "cl_1",
        level = 0,
        lnum = 10,
        col = 0,
        children = {
          {
            kind = "Function",
            name = "meth_1",
            level = 1,
            lnum = 12,
            col = 2,
          },
        },
      },
    })
  end)
end)
