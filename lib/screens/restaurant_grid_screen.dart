import 'package:flutter/material.dart';

class RestaurantGridScreen extends StatelessWidget {
  final List<Map<String, String>> restaurants = [
    {
      "name": "The Gourmet Kitchen",
      "description": "A fine dining experience with a variety of cuisines.",
      "image": "lib/assets/restaurant1.jpg",
    },
    {
      "name": "Pasta Palace",
      "description": "Delicious Italian dishes made with fresh ingredients.",
      "image": "lib/assets/restaurant2.jpg",
    },
    {
      "name": "Sushi World",
      "description": "Authentic Japanese sushi made by experienced chefs.",
      "image": "lib/assets/restaurant3.jpg",
    },
    {
      "name": "BBQ Haven",
      "description": "Mouth-watering BBQ with a wide selection of sides.",
      "image": "lib/assets/restaurant4.jpg",
    },
    {
      "name": "Vegan Delight",
      "description": "Healthy and tasty vegan dishes for everyone.",
      "image": "lib/assets/restaurant5.jpg",
    },
    {
      "name": "Burger Bonanza",
      "description": "Gourmet burgers with a variety of toppings and sides.",
      "image": "lib/assets/restaurant6.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        final restaurant = restaurants[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.asset(
                    restaurant["image"]!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      restaurant["name"]!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      restaurant["description"]!,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
