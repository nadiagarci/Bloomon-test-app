
# You can test the program with:
# ruby app.rb

require_relative "app/repositories/flower_repository"
require_relative "app/repositories/bouquet_repository"
require_relative "app/controllers/flowers_controller"
require_relative "app/controllers/bouquets_controller"
require_relative "router"

# data_input = 'data/test_input.txt'

flower_repository = FlowerRepository.new('data/test_input.txt')
flowers_controller = FlowersController.new(flower_repository)


bouquet_repository = BouquetRepository.new('data/test_input.txt')
bouquets_controller = BouquetsController.new(bouquet_repository)


router = Router.new(flowers_controller, bouquets_controller)


router.run
