require "sinatra"
require "sinatra/reloader"

OPTIONS = ["Rock", "Paper", "Scissors"]

get("/") do
  erb(:rules)
end

get("/rock") do
  @we_play = "Rock"
  @they_play = OPTIONS.sample
  
  if @they_play == "Rock"
    @outcome = "tie"
  elsif@they_play == "Paper"
    @outcome = "lost"
  elsif @they_play == "Scissors"
    @outcome = "won"
  end
  
  erb(:result)
end

get("/paper") do
  @we_play = "Paper"
  @they_play = OPTIONS.sample
  
  if @they_play == "Paper"
    @outcome = "tie"
  elsif@they_play == "Rock"
    @outcome = "won"
  elsif @they_play == "Scissors"
    @outcome = "lost"
  end
  
  erb(:result)
end

get("/scissors") do
  @we_play = "Scissors"
  @they_play = OPTIONS.sample
  
  if @they_play == "Scissors"
    @outcome = "tie"
  elsif@they_play == "Rock"
    @outcome = "lost"
  elsif @they_play == "Paper"
    @outcome = "won"
  end
  
  erb(:result)
end
