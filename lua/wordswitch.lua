local M = {}
local g, fn = vim.g, vim.fn
function M.wordswitch()
	local dictionary, sub
	if g.custom_antovim_definitions then
		dictionary = g.antovim_definitions .. g.custom_antovim_definitions
	else
		dictionary = g.antovim_definitions
	end

	local word = fn.expand('<cword>')

	for _, v in ipairs(dictionary) do
        local temp = 0
        for _, d in ipairs(v) do
            temp = temp + 1
            if word == d then
                if #v == temp then
                    sub = v[1]
                else
                    sub = v[temp + 1]
                end
            end
        end
	end
	if sub then
		vim.cmd('normal! ciw' .. sub)
	end
end
return M



-- another solve
    -- for _, v in ipairs(dictionary) do
    --     local idx = fn.index(v, word)
    --     
    --     if idx > -1 then
    --         if idx == #v - 1 then
    --             sub = v[1]
    --         else
    --             sub = v[idx + 2]
    --         end
    --
    --         vim.cmd('normal! ciw' .. sub)
    --         break
    --     end
    -- end
