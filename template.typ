#import "@preview/grayness:0.1.0": grayscale-image

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
  [ 
    #script],
  font: "HarmonyOS Sans SC",
  fill: luma(206)
  )

#let bottom_dialog(name, script) = table(
    columns: (1fr, 4fr , 15fr, 1fr),
    gutter: 2cm,
    inset: 10pt,
    align: (right, top + right, top + left),
    stroke: rgb(100, 100, 100, 0),
    rows: (118pt),
    box(), name_grid(name), script_grid(script)
  )

#let portrait_table(portrait1, portrait2, focus: 0) = table(
    columns: (5fr, 5fr),
    rows: auto,
    align: (right, left),
    stroke: rgb(100, 100, 100, 0),
    place(
      right,
      dx: 3cm,
      if focus == 2{
        let data = read(portrait1.source, encoding: none)
        grayscale-image(data, height: portrait1.height)
      }else{
        portrait1
      },
    ),
    place(
      left,
      dx: -3cm,
      if focus == 1{
        let data = read(portrait2.source, encoding: none)
        grayscale-image(data, height: portrait2.height)
      }else{
        portrait2
      },
    ),
  )

#let arknights_sim(name, script, portrait, bg, focus: 0) = {
  set text(size: 2.7em)
  place(
    top,
    bg
  )
  place(
    center,
    [
      #box(height: 40pt),
      #if focus == -1 {
        let data = read(portrait.source, encoding: none)
        grayscale-image(data, height: portrait.height)
      } else {
        portrait
      }
    ]
  )
  place(bottom,
    image(
      "pics/dialog_background.png",
      fit: "cover",
      width: 100%
    )
  )
  place(
    bottom,
    bottom_dialog(name, script)
  )
}
#let arknights_sim_2p(name, script, portrait1, portrait2, bg, focus: 0) = {
  set text(size: 2.7em)
  place(
    top,
    bg
  )
  place(
    center,
    [
      #box(height: 40pt),
      #portrait_table(portrait1, portrait2, focus: focus)
    ]
  )
  place(bottom,
    image(
      "pics/dialog_background.png",
      fit: "cover",
      width: 100%
    )
  )
  place(
    bottom,
    bottom_dialog(name, script)
  )
}

// -- Narrator: text fills full page with semi-transparent overlay --
// size: "normal" (<=30 chars), "compact" (31-60), "small" (61+)

#let narrator_overlay(script, size: "normal") = {
  let (font-size, line-leading) = if size == "small" {
    (2.5em, 0.6em)
  } else if size == "compact" {
    (2.8em, 1em)
  } else {
    (2.8em, 1.8em)
  }
  place(
    center,
    block(
      width: 100%,
      height: 100%,
      fill: rgb(0, 0, 0, 160),
      inset: (x: 80pt, y: 60pt),
      align(
        center + horizon,
        par(
          leading: line-leading,
          text(
            size: font-size,
            font: "HarmonyOS Sans SC",
            fill: white,
            script
          )
        )
      )
    )
  )
}

#let arknights_narrator(script, portrait, bg, focus: 0, size: "normal") = {
  place(top, bg)
  place(
    center,
    [
      #box(height: 40pt),
      #if focus == -1 {
        let data = read(portrait.source, encoding: none)
        grayscale-image(data, height: portrait.height)
      } else {
        portrait
      }
    ]
  )
  narrator_overlay(script, size: size)
}

#let arknights_narrator_2p(script, portrait1, portrait2, bg, focus: 0, size: "normal") = {
  place(top, bg)
  place(
    center,
    [
      #box(height: 40pt),
      #portrait_table(portrait1, portrait2, focus: focus)
    ]
  )
  narrator_overlay(script, size: size)
}