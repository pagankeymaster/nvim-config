local U = {}

function U.get(theme)
  return {
    MatchParen = { foreground = theme.common.base08, decoration = "bold" },
    Normal = { background = theme.common.base00 },
    NormalFloat = { foreground = theme.common.base08, background = theme.shades.shade08 },
    cheatSeparator = { foreground = theme.common.base02 },
    FloatBorder = { foreground = theme.shades.shade08, background = theme.shades.shade08 },
    ColorColumn = { background = theme.common.base01 },
    StatusLine = { background = theme.shades.shade06, foreground = theme.common.base04 },
    StatusLineNC = { background = theme.common.base00, foreground = theme.shades.shade06 },
    Conceal = { foreground = theme.common.base01 },
    Directory = { foreground = theme.common.base07 },
    DiffAdd = { foreground = theme.common.base14, decoration = "reverse" },
    DiffChange = { foreground = theme.common.base13, decoration = "reverse" },
    DiffDelete = { foreground = theme.common.base11, decoration = "reverse" },
    DiffText = { foreground = theme.common.base15, decoration = "reverse" },
    EndOfBuffer = { foreground = theme.common.base01 },
    ErrorMsg = { foreground = theme.common.base11 },
    Folded = { foreground = theme.common.base03, decoration = "italic" },
    FoldColumn = { foreground = theme.common.base07 },
    IncSearch = { foreground = theme.common.base06, background = theme.common.base10 },
    LineNr = { foreground = theme.shades.shade01, decoration = "bold" },
    LineNrAbove = { foreground = theme.common.base13, decoration = "bold" },
    LineNrBelow = { foreground = theme.common.base15, decoration = "bold" },
    SignColumn = { foreground = theme.common.base00 },
    VertSplit = { foreground = theme.shades.shade06 },
    CursorLineNr = { foreground = theme.common.base08, decoration = "bold" },
    CursorLine = { background = "NONE" },
    ModeMsg = { foreground = theme.common.base14, decoration = "bold" },
    MsgArea = { foreground = theme.common.base09, decoration = "bold" },
    MsgSeparator = { foreground = theme.common.base15, decoration = "bold" },
    MoreMsg = { foreground = theme.common.base09 },
    NonText = { foreground = theme.shades.shade03 },
    Pmenu = { background = theme.shades.shade05, foreground = theme.common.base04 },
    PmenuSel = { background = theme.common.base14, foreground = theme.common.base01, decoration = "bold" },
    PmenuSbar = { background = theme.shades.shade04 },
    PmenuThumb = { background = theme.common.base09 },
    Question = { foreground = theme.common.base14 },
    QuickFixLine = { foreground = theme.common.base04, decoration = "reverse" },
    qfLineNr = { foreground = theme.common.base04, decoration = "reverse" },
    Search = { foreground = theme.common.base10, background = theme.common.base06, decoration = "reverse" },
    SpecialKey = { foreground = theme.common.base09 },
    SpellBad = { foreground = theme.common.base11, decoration = "undercurl" },
    SpellCap = { foreground = theme.common.base07, decoration = "undercurl" },
    SpellLocal = { foreground = theme.common.base08, decoration = "undercurl" },
    SpellRare = { foreground = theme.common.base09, decoration = "undercurl" },
    TabLineFill = { foreground = theme.common.base04 },
    TablineSel = { foreground = theme.common.base01, background = theme.common.base09 },
    Tabline = { foreground = theme.common.base04, background = theme.common.base01 },
    Title = { foreground = theme.common.base14, decoration = "bold" },
    Visual = { background = theme.shades.shade05 },
    VisualNC = { background = theme.common.base11, theme.common.base13 },
    VisualNOS = { background = theme.shades.shade05, foreground = theme.common.base13 },
    WarningMsg = { foreground = theme.common.base15 },
    WildMenu = { foreground = theme.common.base12, decoration = "bold" },
    CursorColumn = { background = theme.common.base01 },
    ToolbarLine = { foreground = theme.common.base04, background = theme.common.base01 },
    ToolbarButton = { foreground = theme.common.base04, decoration = "bold" },
    NormalMode = { foreground = theme.common.base04, decoration = "reverse" },
    InsertMode = { foreground = theme.common.base14, decoration = "reverse" },
    ReplacelMode = { foreground = theme.common.base11, decoration = "reverse" },
    VisualMode = { foreground = theme.common.base09, decoration = "reverse" },
    CommandMode = { foreground = theme.common.base04, decoration = "reverse" },
    Warnings = { foreground = theme.common.base15 },

    healthError = { foreground = theme.common.base11 },
    healthSuccess = { foreground = theme.common.base14 },
    healthWarning = { foreground = theme.common.base15 },
  }
end

return U

-- vim:ft=lua
