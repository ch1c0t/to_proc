module ToProc
  def to_proc
    method(:new).to_proc
  end
end
