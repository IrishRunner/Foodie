
Product.delete_all
Product.create! id: 1, name: "Dukkah-Spiced Beef & Couscous", price: 9.99, active: true
Product.create! id: 2, name: "Chicken over Farro Salad", price: 9.99, active: true
Product.create! id: 3, name: "Crispy Shrimp and Chilanto", price: 10.99, active: true
Product.create! id: 4, name: "Whole Grain Pasta", price: 8.99, active: true
Product.create! id: 5, name: "Lo Mein Noodle Stir-Fry", price: 8.99, active: true
Product.create! id: 6, name: "Indian Style Stewed Lentils", price: 8.99, active: true
Product.create! id: 7, name: "Crispy Chicken Schnitzel", price: 9.99, active: true
Product.create! id: 8, name: "Jalapeno Burgers", price: 9.99, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"