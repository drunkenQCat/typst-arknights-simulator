#let background_pic = "pics/Avg_bg_bg_indoor_2.png"
#let portrait_pic = "pics/portrait.png"
#let char_name = "丰川祥子"
#let char_scripts = "你这家伙，满脑子都是自己呢。"
#set page(
  height: 18cm, 
  width: 32cm,
  margin: (
    bottom: 0cm,
    left: 0cm,
    right: 0cm,
    top: 0cm
    ),
  )

#set text(size: 1.7em)

#let name_grid = text(
  char_name,
  font: "HarmonyOS Sans SC",
  fill: rgb("a1a1a1")
  )
#let script_grid = text(
  char_scripts,
  font: "HarmonyOS Sans SC",
  fill: rgb("f3f3f3")
  )

#let bottom_dialog = table(
    columns: (1fr , 3fr),
    inset: 10pt,
    align: (top + right, top + left),
    stroke: rgb(100, 100, 100, 0),
    rows: (80pt),
    name_grid, script_grid
  )

#place(
  top,
  image(
    background_pic,
    width: 120%)
)
#place(
  center,
  [
    #box(height: 9pt),
    #image(
      portrait_pic,
      height: 150%
    ),
  ]
)
#place(bottom,
  image(
    "pics/dialog_background.png"
  )
)
#place(
  bottom,
  bottom_dialog
)