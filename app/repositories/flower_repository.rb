
class FlowerRepository

  def initialize(file_path)
    @file = file_path
    @flowers = [] # instances of flower
    load_from_file
    @next_id = @flowers.empty? ? 1 : @flowers.last.id + 1

  end

  def add(flower)
    @flower = flower
    flower.id = @next_id
    @next_id += 1
    @flowers << flower
    write_to_file
  end

  def all
    @flowers
  end


  private

  def write_to_file
    File.open(@file, 'a') do |f|
    f.puts "#{@flower.name}"
    end

  end

  def load_from_file
    File.open(@file).each do |line|
      if name = line.match(/^[a-zA-Z]{2}$/)
         id = @flowers.empty? ? 1 : @flowers.last.id + 1
         flower = Flower.new(id: id, name: name)
         @flowers << flower
      end
     end

  end
end

   # File.open(@file).each do |line|
   #       name = line.to_s
   #       id = @flowers.empty? ? 1 : @flowers.last.id + 1
   #       flower = Flower.new(id: id, name: name)
   #       @flowers << flower
     # end


# match = File.readlines(@file).select { |l| l.to_s =~ /[a-zA-Z]{2}/ }

#        match.each do |line|
#        name = line.to_s
#        id = @flowers.empty? ? 1 : @flowers.last.id + 1
#        flower = Flower.new(id: id, name: name)
#        @flowers << flower
#        end

