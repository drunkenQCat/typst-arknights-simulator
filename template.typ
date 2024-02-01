#let background_pic = "pics/Avg_bg_bg_indoor_2.png"
#let portrait_pic = "pics/portrait.png"
#let char_name = "丰川祥子"
#let char_scripts = "你这家伙，满脑子都是自己呢。"

#let name_grid(name) = text(
  name,
  font: "HarmonyOS Sans SC",
  fill: rgb("a1a1a1")
  )
#let script_grid(script) = text(
  script,
  font: "HarmonyOS Sans SC",
  fill: rgb("f3f3f3")
  )

#let bottom_dialog(name, script) = table(
    columns: (1fr , 3fr),
    inset: 10pt,
    align: (top + right, top + left),
    stroke: rgb(100, 100, 100, 0),
    rows: (80pt),
    name_grid(name), script_grid(script)
  )

#let arknights_sim(name, script, portrait, bg) = page(
  height: 18cm, 
  width: 32cm,
  margin: (
    bottom: -0.01cm,
    left: 0cm,
    right: 0cm,
    top: 0cm
    ),
)[
  #set text(size: 1.7em)
  #place(
    top,
    bg
  )
  #place(
    center,
    [
      #box(height: 80pt),
      #portrait
    ]
  )
  #place(bottom,
    image(
      "pics/dialog_background.png"
    )
  )
  #place(
    bottom,
    bottom_dialog(name, script)
  )
]
// 示例
#arknights_sim("长崎素世", "求你了，如果没有祥子你们的话，瓦塔西！", image("pics/sayo_portrait.png",height: 80%), image(background_pic))

#arknights_sim(
  char_name, 
  char_scripts, 
    image(
      portrait_pic,
      height: 150%
    ),
    image(
      background_pic,
      width: 120%),
)