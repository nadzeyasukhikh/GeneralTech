// Вывести всех юзеров с балансом более 100 EUR  

db.users.find(
    { balance: { $gt: 100 } },
    { _id: 0, fullname: 1 }  
)

// Вывести имена незаблокированных юзеров с балансом от 10 до 1000 EUR

db.users.find(
    {is_blocked: { $ne: true }, balance: { $gte: 10, $lte: 1000 } },
    { _id: 0, fullname: 1 }  
)

// Обнулить баланс заблокированных юзеров не из France

db.users.updateMany(
    {country: { $ne: 'France' }, is_blocked: true },
    { $set: { balance: 0 }}
    )

    // Уменьшить баланс юзеру 5 на 3.5%

    db.users.updateMany(
        {_id: 5 },
        { $mul: { balance: 0.965 }}
        )

  // Увеличить баланс незаблокированных юзеров на 0.5%

  db.users.updateMany(
    {is_blocked: { $ne: true }},
    { $mul: { balance: 1.005 }}
    )

