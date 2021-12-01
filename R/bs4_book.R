#' Custom HTML template
#'
#' Loads additional style and configs
#'
#' @export
#'
bs4_book <- function(
  theme = bs4_book_theme(
    primary = "#086a6a",
    base_font = font_google("Lexend"),
    heading_font = font_google("Roboto"),
    code_font = font_google("JetBrains Mono"),
  ),
  template = system.file(
    "rmarkdown/resources/bs4_book_ptbr.html",
    package = "bd.format"
  ),
  includes = rmarkdown::includes(
    in_header = system.file(
      "rmarkdown/resources/preamble.html",
      package = "bd.format"
    )
  ),
  css = system.file(
    "rmarkdown/resources/styles.css",
    package = "bd.format"
  ),
  repo = NULL,
  lib_dir = "libs",
  pandoc_args = NULL,
  extra_dependencies = NULL,
  split_bib = FALSE,
  anchor_sections = TRUE,
  section_divs = TRUE,
  fig_width = 7,
  fig_height = 5,
  fig_retina = 2,
  fig_caption = TRUE,
  dev = 'png',
  df_print = 'paged',
  code_folding = 'show',
  highlight = 'pygment',
  mathjax = 'default',
  keep_md = FALSE,
  md_extensions = NULL,
  ...
) {

  # call the base function
  bookdown::bs4_book(
    theme = theme,
    repo = repo,
    lib_dir = lib_dir,
    pandoc_args = pandoc_args,
    extra_dependencies = extra_dependencies,
    template = template,
    split_bib = split_bib,
    anchor_sections = anchor_sections,
    section_divs = section_divs,
    fig_width = fig_width,
    fig_height = fig_height,
    fig_retina = fig_retina,
    fig_caption = fig_caption,
    dev = dev,
    df_print = df_print,
    code_folding = code_folding,
    highlight = highlight,
    mathjax = mathjax,
    css = css,
    includes = includes,
    keep_md = keep_md,
    md_extensions = md_extensions,
    ...
  )

}
