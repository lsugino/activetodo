require_relative '../../config/application'

class Controller

  def user_input
    @arg = ARGV
  end

  def list
    Task.all.each {|t| puts "#{t.id} #{t.todo}" }
  end

  def add
    Task.create(:todo => @arg.join(" "))
  end

  def delete
    Task.destroy(@arg.join(" ").to_i)
    # or Task.where(:todo => @arg.join(" ")).destroy_all
  end

  def run!
    user_input
    case @arg.shift
    when 'list'
      list
    when 'add'
      add
    when 'delete'
      delete
    end
  end

end

Controller.new.run!

