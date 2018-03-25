
class BouquetRepository

  def initialize(file_path)
    @file = file_path
    @bouquets = [] # instances of bouquet
    load_from_file
    @next_id = @bouquets.empty? ? 1 : @bouquets.last.id + 1

  end

  def add(bouquet)
    @bouquet = bouquet
    bouquet.id = @next_id
    @next_id += 1
    @bouquets << bouquet
    write_to_file
  end

  def all
    @bouquets
  end


  private

  def write_to_file
    # File.open(@file, 'a') do |f|
    # f.puts "#{@bouquet.specification}"
    # end
    file = File.read(@file).sub(/\w\w\w.*/, "#{@bouquet.specification}")
    File.write(@file, file)
  end

  def load_from_file
    File.open(@file).each do |line|
      if specification = line.match(/\w\w\w.*/)
         id = @bouquets.empty? ? 1 : @bouquets.last.id + 1
         bouquet = Bouquet.new(id: id, specification: specification)
         @bouquets << bouquet
      end
     end

  end
end


