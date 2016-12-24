stacks = readlines.map(&:chomp)[0].split("")

SCORE_MAP = {
  0 => 0,
  1 => 15,
  2 => 30,
  3 => 40,
}

status = {
  "A" => [0, 0, 0],
  "B" => [0, 0, 0],
}

stacks.each do |s|
  # ポイント加算
  status[s][0] += 1

  # 4ポイントの場合は1ゲーム＋
  if status[s][0] >= 4
    status[s][1] += 1
    status["A"][0] = 0
    status["B"][0] = 0
  end

  # 6ゲーム取ったら、1セット
  if status[s][1] >= 6
    status[s][2] += 1
    status["A"][1] = 0
    status["B"][1] = 0
    status["A"][0] = 0
    status["B"][0] = 0
  end
end

aps = SCORE_MAP[status["A"][0]]
bps = SCORE_MAP[status["B"][0]]
ag = status["A"][1]
bg = status["B"][1]
as = status["A"][2]
bs = status["B"][2]

result = <<-TEXT
PScore #{aps}-#{bps}
Game #{ag}-#{bg}
Set #{as}-#{bs}
TEXT

puts result
