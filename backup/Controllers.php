<?php

// Composant Validator 
// $age = -200;

// $resultat = $validator->validate($age, [
//     new LessThan(120),
//     new GreaterThan([
//         'value' => 0,
//         'message' => "L'âge doit être supérieur à {{ compared_value }} mais vous avez donnez {{ value }}"
//     ])
// ]);

// if ($resultat->count() > 0) {
//     dd('Il y a des erreurs');
// }
// dd("Tout va bien");




// $client = [
//     'nom' => 'Chamla',
//     'prenom' => 'Lior',
//     'voiture' => [
//         'marque' => 'Hyudai',
//         'couleur' => 'Noire'
//     ]
// ];

// $collection = new Collection([
//     'nom' => new NotBlank(['message' => "Le nom ne doit pas être vide"]),
//     'prenom' => [
//         new NotBlank(['message' => "Le prenome ne doit pas être vide"]),
//         new Length(['min' => 3, 'minMessage' => "Le prénom doit contenir au moins 3 caractères"])
//     ],
//     'voiture' => new Collection([
//         'marque' => new NotBlank(['message' => "Le marque de la voiture est obligatoire"]),
//         'couleur' => new NotBlank(['message' => "La couleur de la voiture est obligatoire"])
//     ])
// ]);

// $resultat = $validator->validate($client, $collection);

// dd($resultat);



// $product = new Product;

// $resultat = $validator->validate($product, null, ["Default", "with-price"]);

// dd($resultat);



$product = $productRepository->find($id);

$form = $this->createForm(ProductType::class, $product, [
    "validation_groups" => ["large-name", "with-price"]
]);
