(((text) @text
    (#match? @text "[{].*}")) @injection.content
    (#set! injection.language "rust"))
