

## Usage

```
docker build . -t bakery-server-image
docker run -dt -p 8080:8080 bakery-server-image
```

## Cross compilation

```
## Windows
env GOOS=windows GOARCH=amd64 go build -v -o ./bin/server_windows-1.0.exe
## Linux
env GOOS=linux GOARCH=amd64 go build -v -o ./bin/server_linux-1.0
## macos
env GOOS=darwin GOARCH=amd64 go build -v -o ./bin/server_macos-1.0
```


## Usage

#### Linux

Run the binary file at `bin/server_linux-1.0`
```
cd bin
chmod +x server_linux-1.0
./server_linux-1.0
``

#### Windows

Run the executable file at `bin/server_windows-1.0.exe`

#### macOS

Run the binary file at `bin/server_macos-1.0`


### Using the API

The API has the following endpoints:

##### /health

```bash
curl curl http://localhost:8080/health
```

```
{"status":"Healthy"}
```


##### /sa/menu

```bash
curl curl http://localhost:8080/sa/menu
```

```
[{"name":"Baklava","description":"Traditional sweet layered pastry dessert filled with chopped nuts, and sweetened with our signature syrup.","price":2.5,"calories":560},{"name":"Sourdough Baguette","description":"Crisp and light, with a crackly brown crust, baguettes ","price":2.99,"calories":300},{"name":"Cheese Roll","description":"Super soft and fluffy grilled cheese roll.","price":3.39,"calories":440},{"name":"Three Cheese Artisan Bread","description":"Speciality artisan bread combines the rich flavor of three classic Italian cheeses: Asiago, Parmesan and Romano.","price":5.5,"calories":620},{"name":"Cheese Croissant","description":"Classic cheese croissant.","price":2.5,"calories":480},{"name":"Cranberry Bagel","description":"Special Cranberry Bagels made with real cranberries for a delicious taste you can't resist.","price":1.99,"calories":380}]
```


##### /us/menu

```bash
curl curl http://localhost:8080/us/menu
```

```
[{"name":"Baklava","description":"Traditional sweet layered pastry dessert filled with chopped nuts, and sweetened with our signature syrup.","price":2.5,"calories":560},{"name":"Sourdough Baguette","description":"Crisp and light, with a crackly brown crust, baguettes ","price":2.99,"calories":300},{"name":"Cheese Roll","description":"Super soft and fluffy grilled cheese roll.","price":3.39,"calories":440},{"name":"Three Cheese Artisan Bread","description":"Speciality artisan bread combines the rich flavor of three classic Italian cheeses: Asiago, Parmesan and Romano.","price":5.5,"calories":620},{"name":"Cheese Croissant","description":"Classic cheese croissant.","price":2.5,"calories":480},{"name":"Cranberry Bagel","description":"Special Cranberry Bagels made with real cranberries for a delicious taste you can't resist.","price":1.99,"calories":380},{"name":"Broccoli Cheddar Soup","description":"Broccoli Cheddar Soup served in a sourdough bread bowl.","price":8.5,"calories":820}]
```


##### /fatal

```bash
curl curl http://localhost:8080/fatal
```

This will kill the server process.