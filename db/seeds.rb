q1 = Question.create!(content: "新しい単語を覚えるときは？")
q1.choices.create!(content: "書いて覚える", score_visual: 1, score_auditory: 0)
q1.choices.create!(content: "声に出して覚える", score_visual: 0, score_auditory: 1)

q2 = Question.create!(content: "授業中に集中できるのは？")
q2.choices.create!(content: "図やスライドがあるとき", score_visual: 1, score_auditory: 0)
q2.choices.create!(content: "説明文が詳しいとき", score_visual: 0, score_auditory: 1)

q3 = Question.create!(content: "本を読むときのスタイルは？")
q3.choices.create!(content: "マーカーを引いたり図を書く", score_visual: 1, score_auditory: 0)
q3.choices.create!(content: "音読したり誰かに説明する", score_visual: 0, score_auditory: 1)

q4 = Question.create!(content: "覚えにくい情報に対しては？")
q4.choices.create!(content: "ノートに図式化して整理する", score_visual: 1, score_auditory: 0)
q4.choices.create!(content: "録音して繰り返し聞く", score_visual: 0, score_auditory: 1)

q5 = Question.create!(content: "より頭に残る学習素材は？")
q5.choices.create!(content: "イラスト付きのテキスト", score_visual: 1, score_auditory: 0)
q5.choices.create!(content: "ポッドキャストや動画講義", score_visual: 0, score_auditory: 1)