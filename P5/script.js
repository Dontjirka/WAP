alert("Press R for moving or SPACE for return.")

const words = []

function setup() {
  createCanvas(window.innerWidth, window.innerHeight)
  background(0)

  const str = 'Jiri Fuks'
  const wordsStr = str.split(' ')

  textSize(48)

  let x = 20
  let y = 60
  fill(255)
  for (let i = 0; i < wordsStr.length; i++) {
    const wordStr = wordsStr[i]
    const wordStrWidth = textWidth(wordStr)
    const word = new Word(wordStr, x, y, i)
    words.push(word)
    x = x + wordStrWidth + textWidth(' ')
    const nextWordStrWidth = textWidth(wordsStr[i + 1]) || 0
    if (x > width - nextWordStrWidth) {
      y += 40 
      x = 20
    }
  }
}

function draw() {
  background(0)

  for (let i = 0; i < words.length; i++) {
    const word = words[i] 
    word.update()
    word.display()
  }
}

function keyPressed() {
  if (key === 'r') {
    for (let word of words) word.spread()
  } else if (key === ' ') {
    for (let word of words) word.reset()
  }
}

class Word {
  constructor(word, x, y, idx) {
    this.word = word
    this.x = x
    this.y = y
    this.tx = this.x
    this.ty = this.y
    this.origx = this.x
    this.origy = this.y
    this.idx = idx
    this.fcolor = color(255)
  }

  reset() {
    this.tx = this.origx
    this.ty = this.origy
  }

  spread() {
    this.tx = random(width)
    this.ty = random(height)
  }

  update() {
    this.x = lerp(this.x, this.tx, 0.1)
    this.y = lerp(this.y, this.ty, 0.1)
  }

  display() {
    fill(this.fcolor)
    noStroke()
    text(this.word, this.x, this.y)
  }
}