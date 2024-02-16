#let background_pic = "pics/Avg_bg_bg_indoor_2.png"
#let portrait_pic = "pics/portrait.png"
#let char_name = "丰川祥子"
#let char_scripts = "你这家伙，满脑子都是自己呢。"

#let name_grid(name) = text(
  text(
    name, 
    size: 1.3em,
    tracking: 0.01em,
    ),
  font: "HarmonyOS Sans SC",
  weight: "medium",
  fill: luma(50%)
  )
#let script_grid(script) = text(
  [ #h(2cm)
    #script],
  font: "HarmonyOS Sans SC",
  fill: luma(206)
  )

#let bottom_dialog(name, script) = table(
    columns: (1fr , 4fr),
    inset: 10pt,
    align: (top + right, top + left),
    stroke: rgb(100, 100, 100, 0),
    rows: (118pt),
    name_grid(name), script_grid(script)
  )

#let portrait_table(portrait1, portrait2) = table(
    columns: (1fr, auto, 1fr), // 两边的图片列和中间的空白列
    rows: auto, // 根据内容自动调整行高
    align: center, // 居中对齐内容
    stroke: rgb(100, 100, 100, 0), // 透明边框
    portrait1, // 左侧肖像
    box(width: 20pt), // 中间空白列，用于留出空隙
    portrait2, // 右侧肖像
  )

#let arknights_sim(name, script, portrait, bg) = page(
  height: 810pt,
  width: 1440pt,
  margin: (
    bottom: -0.01cm,
    left: 0cm,
    right: 0cm,
    top: 0cm
    ),
)[
  #set text(size: 2.7em)
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
#let arknights_sim_2p(name, script, portrait1, portrait2, bg) = page(
  height: 810pt,
  width: 1440pt,
  margin: (
    bottom: -0.01cm,
    left: 0cm,
    right: 0cm,
    top: 0cm
    ),
)[
  #set text(size: 2.7em)
  #place(
    top,
    bg
  )
  #place(
    center,
    [
      #box(height: 80pt),
      #portrait_table(portrait1, portrait2)
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

#arknights_sim_2p(
  char_name, 
  char_scripts, 
  image(
    portrait_pic,
    height: 150%
  ),
  image("pics/sayo_portrait.png",height: 80%),
  image(
    background_pic,
    width: 120%
  )
)

#portrait_table(
  image(
    portrait_pic,
    width: 100%
  ),
  image("pics/sayo_portrait.png",width: 30%),
)