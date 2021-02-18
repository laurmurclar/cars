In an `irb` session:
```ruby
load './entrypoint.rb'
```
which will load all of the other files.

Then you can do stuff like:
```ruby
bolt = SimplePart.new(name: "bolt", price: 2)
cell = SimplePart.new(name: "cell", price: 6)

components = []
6.times { components << bolt }
4.times { components << cell }
wheel = CompositePart.new(name: "wheel", components: components)
steel_bar = SimplePart.new(name: "steel bar", price: 50)
axle = CompositePart.new(name: "axle", components: [wheel, wheel, steel_bar])

cylinder = SimplePart.new(name: "cylinder", price: 100)
components = []
4.times { components << cylinder }
8.times { components << bolt }
engine = CompositePart.new(name: "engine", components: components)

little_car = Car.new(make: "Mini", model: "Cooper", parts: [axle, axle, engine])
```
