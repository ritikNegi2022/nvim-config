pack("nvim-mini/mini.comment")

local mini_comment = require("mini.comment")

mini_comment.setup({
	mappings = {
    -- Toggle comment (like `gcip` - comment inner paragraph) for both
    -- Normal and Visual modes
    comment = '<leader>/',

    -- Toggle comment on current line
    comment_line = '<leader>/',

    -- Toggle comment on visual selection
    comment_visual = '<leader>/',

    -- Define 'comment' textobject (like `d<leader>/` - delete whole comment block)
    -- Works also in Visual mode if mapping differs from `comment_visual`
    textobject = '<leader>/',
  },
})


