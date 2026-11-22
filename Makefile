.PHONY: format

format:
	uvx --with mdformat-gfm --with mdformat-frontmatter --with mdformat-footnote --with mdformat-gfm-alerts mdformat .
