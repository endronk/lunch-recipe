# Flutter App for Lunch Recipes Suggestion
![Coverage](https://raw.githubusercontent.com/endronk/lunch-recipe/master/coverage_badge.svg?sanitize=true)

A demo app to get a set of lunch recipes based on the contents of
fridge.

## Screenshots
<p float="left">
  <img src="https://i.imgur.com/CreTU2M.png" height="400" hspace="10" />
  <img src="https://i.imgur.com/Q0e3chd.png" height="400" hspace="10" />
  <img src="https://i.imgur.com/MpCZmGH.png" height="400" hspace="10" />
  <img src="https://i.imgur.com/C3oo431.png" height="400" hspace="10" />
  <img src="https://i.imgur.com/bIzkGnD.png" height="400" hspace="10" />
  <img src="https://i.imgur.com/OBJDm3q.png" height="400" hspace="10" />
  <img src="https://i.imgur.com/Vd4rrBB.png" height="400" hspace="10" />
</p>

## Technical Description
This project showcases a combination concept of DDD (Domain Driven
Design) and clean architecture on a Flutter app.

NOTE: Since I haven't fully embraced the concept of DDD, the DDD
implementation still needs further exploration.

The folder structure uses DDD layered architecture, which consists of 4
layers:
- Domain
- Application
- Infrastructure
- Presentation

The development is started by creating the domain objects, which are
`FridgeIngredient` and `Recipe`, because domain layer is the innermost
layer and all other layers depend on it. The `FridgeIngredient` model
contains the business rule of "ingredient usability based on the use-by
date". Therefore, it is not just a dummy model, but rather contains a
function to check if the ingredient can still be used on the selected
lunch date. `FridgeIngredient` is named as fridge ingredient, not just
`Ingredient`, because this ingredient contains `useBy` field, which are
only applicable for ingredient in fridge, and different from ingredient
in recipe, where it doesn't have such property.

Other than `FridgeIngredient` model in the domain layer, there are also
another counterpart models to cater for different data usage purpose,
which are:
- `FridgeIngredientDTO` in infrastructure layer.

  For representing data from backend. It contains the `title` and
  `useBy` fields.

- `FridgeIngredientUI` in presentation layer.

  For representing data to be shown in UI. It contains the `title` and
  `isSelected` fields.

The application layer contains use cases for orchestrating the whole
process flow. For example, in `GetSortedUsableFridgeIngredientsUseCase`,
after user selects the lunch date, the use case will get the ingredients
from backend service. After that, it will filter the results using the
business rule stored in the domain model, and then return the sorted
result.

The presentation layer contains the widgets and the app state store,
which uses `MobX` package. The `MobX` store contains data like
`selectedDate` of lunch, where the date will still be preserved even
after user navigates to different pages and returns back to the first
page. The store also contains some `Observable`s to store the result of
use cases.

To handle the UI state of loading, success, and error, a sealed class of
`Resource` is used. This class contains the state along with the data
inside.

`Exception` is treated as first-class citizen by borrowing the concept
of `Either` from functional programming. The `Exception` is also
converted to a sealed class of `Failure` so that the developer will be
forced to handle every kind of the failures.

## Credits
Credits to
[PNGGuru](https://www.pngguru.com/free-transparent-background-png-clipart-bhkaw)
and [Svetlana Kolpakova](https://www.123rf.com/profile_sarsmis) for the
images.
