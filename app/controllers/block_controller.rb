class BlockController < ApplicationController
  
  def index
    session[:level] = nil
    
    @title = "Welcome to Dharma's Multiplicity!"
    
  end
  
  def family
    session[:level] = "Turtle"
    @names = Hash.new
    @names = { 1 => "Ones",2 => "Twos",3 => "Threes",4 => "Fours",
              5 => "Fives",6 => "Sixes",7 => "Sevens",8 => "Eights",
              9 => "Nines",10 => "Tens",11 => "Elevens",12 => "Twelves" }
    @title = @names[params[:id].to_i]
    @factors = [1,2,3,4,5,6,7,8,9,10,11,12]
    @levels = { "Turtle" => 120, "Dog" => 60, "Cheetah" => 30 }
    
    if params[:commit] == "SCORE!"
      @answers = params[:answers]
      @scores = Family.score(params[:id],params[:answers])
      
      @rand_factors = Array.new
      params[:answers].each_pair do |m,a|
        @rand_factors.push(m)
      end
    else
      @answers = Hash.new
      @rand_factors = @factors.sort_by{rand}
      @rand_factors.each do |f|
        @answers[f] = ""
      end
    end
  end
  
  def score
    
      
    
  end
  
end
