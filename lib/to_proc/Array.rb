class Array
  def to_proc
    if self[0].is_a? Symbol
      method, *arguments = self
      -> receiver { receiver.send method, *arguments }
    elsif self[1].is_a? Symbol
      receiver, method, *arguments = self
      if arguments.empty?
        -> argument { receiver.send method, argument }
      else
        # if some arguments were passed as well,
        # what is more reasonable for collection element?
        # to become the first or the last argument?
      end
    else
      super
    end
  end
end
