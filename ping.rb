score_player1=0
score_player2=0
forfieft=true


puts "lets play a game :)"

until score_player1==11 or score_player2 ==11 or forfieft==false
    serve_change= %5
    input=gets.chomp.to_s
    if input=="quit"
        forfieft=false
    puts "Loser"
    elsif input =="1" 
        score_player1 += 1
        puts "player 1 score #{score_player1}
        player 2 score #{score_player2} "
       if    
        total == serve_change
        puts "next players serve"
       end
    elsif input =="2"
        score_player2 += 1 
        puts "player 1 score #{score_player1}
        player 2 score #{score_player2} "
        if    
            total == serve_change[]
            puts "next players serve"
        end
    end

end
puts "Final scores are Player 1 Score #{score_player1}
Player 2 Score #{score_player2}"
