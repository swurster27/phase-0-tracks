Wrestling_tournament = {
    mat_1: {
        mat_sponsor: 'Adidas',
        score: {
            red: 6,
            green: 4
        },
        moves_being_used: [
            "Double Leg", 
            "Firemans"
        ]
    },
    mat_2: {
        mat_sponsor: 'Nike',
        score: {
            red: 2,
            green: 4
        },
        moves_being_used: [
            "High-crotch", 
            "Single leg"
        ]
    },
    mat_3: {
        mat_sponsor: 'Brute',
        score: {
            red: 6,
            green: 6
        },
        moves_being_used: [
            "Low Single",
            "Head Lock"
          ]
    }
}

p Wrestling_tournament[:mat_1][:mat_sponsor]
p Wrestling_tournament[:mat_2][:score]