#import "template.typ": *

#let background_pic = "pics/Avg_bg_bg_indoor_2.png"
#let portrait_pic = "pics/portrait.png"
#let char_name = "YoStar"
#let char_scripts = "Sample dialog text."

#set page(
  width: 1440pt,
  height: 810pt,
  margin: (
    bottom: -0.01cm,
    left: 0cm,
    right: 0cm,
    top: 0cm
  )
)

#arknights_sim("Soyo", "Please, without Sakiko, I...", image("pics/sayo_portrait.png",height: 80%), image(background_pic, width: 100%), focus: -1)

#pagebreak()

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

#pagebreak()

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
  ),
  focus: 2
)

#pagebreak()

#portrait_table(
  image(
    portrait_pic,
    width: 100%
  ),
  image("pics/sayo_portrait.png",width: 30%),
)

#pagebreak()

#arknights_narrator("在那遥远的地方，有一片被遗忘的大地……\n 流着奶和蜜，是我们的应许之地", image(portrait_pic, height: 80%), image(background_pic, width: 100%))

#pagebreak()

#arknights_narrator_2p(
  "她们并肩而立，望向远方的天际线。宽阔的天空下，风吹过她们的发丝，带来一丝凉意。她们的目光坚定而深邃，仿佛在思索着未来的道路。没有甚么言语，只有沉默的陪伴。她们的心中，充满了对彼此的信任与理解。无论前方的路有多么艰难，她们都将携手前行，迎接未知的挑战。",
  image(portrait_pic, height: 80%),
  image("pics/sayo_portrait.png", height: 80%),
  image(background_pic, width: 100%),
  focus: 1,
  size: "compact"
)

#pagebreak()

#arknights_narrator_2p(
  "她们并肩而立，望向远方的天际线。宽阔的天空下，风吹过她们的发丝，带来一丝凉意。她们的目光坚定而深邃，仿佛在思索着未来的道路。没有甚么言语，只有沉默的陪伴。她们的心中，充满了对彼此的信任与理解。无论前方的路有多么艰难，她们都将携手前行，迎接未知的挑战。\n 啊，我们真的可以找到新的方向吗？\n其中一人轻轻笑了笑，目光依旧停留在远方。\n“我不知道。”她低声说道，“也许前面仍是迷雾，也许我们还会走错很多路。”\n风从山谷间吹来，带着草木的气息。另一人握紧了她的手，掌心温暖而坚定。\n“方向未必在那里等着我们。”她说，“也许，是我们一起走出来的。”\n天边最后一缕晚霞渐渐隐去，夜色缓缓降临。\n“那就继续走吧。”\n她们相视一笑，并肩迈开脚步。前方依旧未知，但只要彼此仍在身旁，答案终会在旅途中出现。",
  image(portrait_pic, height: 80%),
  image("pics/sayo_portrait.png", height: 80%),
  image(background_pic, width: 100%),
  focus: 1,
  size: "small"
)
