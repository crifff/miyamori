_ = require 'underscore'

module.exports = (robot) ->
  robot.hear /ishiki_check/i, (msg) ->
    ishikiLv = _.sample([0..705])
    ishiki   = null

    switch
      when ishikiLv <= 0   then ishiki = '「無」'
      when ishikiLv <= 20  then ishiki = '「恥」'
      when ishikiLv <= 30  then ishiki = '「罪悪感」'
      when ishikiLv <= 30  then ishiki = '「罪悪感」'
      when ishikiLv <= 50  then ishiki = '「無感動」'
      when ishikiLv <= 75  then ishiki = '「深い悲しみ」'
      when ishikiLv <= 100 then ishiki = '「恐怖」'
      when ishikiLv <= 125 then ishiki = '「欲望」'
      when ishikiLv <= 150 then ishiki = '「怒り」'
      when ishikiLv <= 170 then ishiki = '「プライド」'
      when ishikiLv <= 200 then ishiki = '「勇気」'
      when ishikiLv <= 250 then ishiki = '「中立」'
      when ishikiLv <= 310 then ishiki = '「意欲」'
      when ishikiLv <= 350 then ishiki = '「受容」'
      when ishikiLv <= 400 then ishiki = '「理性」'
      when ishikiLv <= 500 then ishiki = '「愛」'
      when ishikiLv <= 540 then ishiki = '「喜び」'
      when ishikiLv <= 600 then ishiki = '「平和」'
      when ishikiLv <= 700 then ishiki = '「悟り」'
      else                      ishiki = '「神」'

    msg.send "本日の#{msg.message.user.name}さんの意識レベルは #{ishikiLv} - です！ #{ishiki}ですね！"
