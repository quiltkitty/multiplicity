class Family

  def self.score(family,answers)
    @scores = Hash.new
    answers.each_pair do |m,a|
      @scores[m] = "incorrect"
      if a != ""
        @scores[m] = "correct" if (family.to_i * m.to_i) == a.to_i
      end
    end
      
    return @scores
  end
  
end
