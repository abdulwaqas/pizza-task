
Item.delete_all
Pizza.delete_all
Order.delete_all
OrdersItem.delete_all

    pizzas = Pizza.create([{ name: "Salami" ,price: 20}, { name: "Tonno" ,price: 30},  { name: "Margherita" ,price: 40}])

    items1 = Item.create([ 
         { size: "Large" , pizza: pizzas.second} ])

    items2 = Item.create([{ size: "Large" , pizza: pizzas.third , adds: ['Onions','Cheese','Olives']} , 
        { size: "Medium" , pizza: pizzas.second , removes: ['Onions','Olives']} , 
        { size: "Small" , pizza: pizzas.third}])

        
    items3 = Item.create([{ size: "Medium" , pizza: pizzas.first  ,adds: ['Onions'] , removes: ['Cheese']} , 
        { size: "Small" , pizza: pizzas.first} ,
        { size: "Small" , pizza: pizzas.first} ,
        { size: "Small" , pizza: pizzas.first} ,
         { size: "Small" , pizza: pizzas.first}])



    Order.create([{  items: items1 }  ])
    Order.create([{  items: items2 }  ])
    Order.create([{  items: items3 , promotion_code: '2FOR1' , discount_code: 'SAVE5' }  ])