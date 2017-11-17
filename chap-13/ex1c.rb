class Integer

  def factorial
    n = self
    (1..n).reduce(:*)
  end

end
