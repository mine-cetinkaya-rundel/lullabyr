
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lullabyr <img src="man/figures/lullabyr_logo.png" align="right" />

Children’s songs can be repetitive. This is said to be good for
childrens’ learning, but can get boring for parents. This package helps
parents who lack creativity (or energy) to generate childrens’ songs
with new words in them. It’s also a great way to get your child (if
they’re old enough) to generate a song for themselves. Maybe they’ll
get inspired and want to learn R\!

## Installation

This package is not on CRAN. You can install it from GitHub with:

``` r
library(devtools)
install_github("mine-cetinkaya-rundel/lullabyr")
```

## Example

Start by loading the package.

``` r
library(lullabyr)
```

Let’s set a seed for the random generation first.

``` r
set.seed(52)
```

A is for… with animals:

``` r
sing_alphabet(animals)
#> A is for African Forest Elephant, A - A - African Forest Elephant.
#>  B is for Bongo, B - B - Bongo.
#>  C is for Caterpillar, C - C - Caterpillar.
#>  D is for Duck, D - D - Duck.
#>  E is for English Springer Spaniel, E - E - English Springer Spaniel.
#>  F is for Fishing Cat, F - F - Fishing Cat.
#>  G is for Geoffroys Tamarin, G - G - Geoffroys Tamarin.
#>  H is for Hammerhead Shark, H - H - Hammerhead Shark.
#>  I is for Ibis, I - I - Ibis.
#>  J is for Japanese Chin, J - J - Japanese Chin.
#>  K is for Komodo Dragon, K - K - Komodo Dragon.
#>  L is for Leaf-Tailed Gecko, L - L - Leaf-Tailed Gecko.
#>  M is for Minke Whale, M - M - Minke Whale.
#>  N is for Neanderthal, N - N - Neanderthal.
#>  O is for Olm, O - O - Olm.
#>  P is for Pekingese, P - P - Pekingese.
#>  Q is for Quoll, Q - Q - Quoll.
#>  R is for Red Wolf, R - R - Red Wolf.
#>  S is for Silver Dollar, S - S - Silver Dollar.
#>  T is for Tarsier, T - T - Tarsier.
#>  U is for Uguisu, U - U - Uguisu.
#>  V is for Vampire Bat, V - V - Vampire Bat.
#>  W is for Water Vole, W - W - Water Vole.
#>  X is for X-Ray Tetra, X - X - X-Ray Tetra.
#>  Y is for Yak, Y - Y - Yak.
#>  Z is for Zonkey, Z - Z - Zonkey.
```

A is for… with vegetables:

``` r
sing_alphabet(vegetables)
#> A is for Acorn Squash, A - A - Acorn Squash.
#>  B is for Broad Beans, B - B - Broad Beans.
#>  C is for Courgette, C - C - Courgette.
#>  D is for Daikon, D - D - Daikon.
#>  E is for Endive, E - E - Endive.
#>  F is for Fennel, F - F - Fennel.
#>  G is for Greens, G - G - Greens.
#>  H is for Herbs, H - H - Herbs.
#>  I is for Ice Plant, I - I - Ice Plant.
#>  J is for Jicama, J - J - Jicama.
#>  K is for Kohlrabi, K - K - Kohlrabi.
#>  L is for Lettuce, L - L - Lettuce.
#>  M is for Mustard Greens, M - M - Mustard Greens.
#>  N is for New Zealand Spinach, N - N - New Zealand Spinach.
#>  O is for Onion, O - O - Onion.
#>  P is for Peppers, P - P - Peppers.
#>  Q is for Quinoa, Q - Q - Quinoa.
#>  R is for Rosemary, R - R - Rosemary.
#>  S is for Split Peas, S - S - Split Peas.
#>  T is for Tubers, T - T - Tubers.
#>  U is for Upland Cress, U - U - Upland Cress.
#>  V is for Velvet Bean, V - V - Velvet Bean.
#>  W is for Watercress, W - W - Watercress.
#>  X is for Xerophyte, X - X - Xerophyte.
#>  Y is for Yam, Y - Y - Yam.
#>  Z is for Zucchini, Z - Z - Zucchini.
```

A is for… with fruits:

``` r
sing_alphabet(fruits)
#> A is for Açaí, A - A - Açaí.
#>  B is for Boysenberry, B - B - Boysenberry.
#>  C is for Cherimoya, C - C - Cherimoya.
#>  D is for Durian, D - D - Durian.
#>  E is for Elderberry, E - E - Elderberry.
#>  F is for Feijoa, F - F - Feijoa.
#>  G is for Guava, G - G - Guava.
#>  H is for Honeyberry, H - H - Honeyberry.
#>  I is for Indian Plum, I - I - Indian Plum.
#>  J is for Jabuticaba, J - J - Jabuticaba.
#>  K is for Kumquat, K - K - Kumquat.
#>  L is for Longan, L - L - Longan.
#>  M is for Marionberry, M - M - Marionberry.
#>  N is for Nance, N - N - Nance.
#>  O is for Orange, O - O - Orange.
#>  P is for Pomegranate, P - P - Pomegranate.
#>  Q is for Quince, Q - Q - Quince.
#>  R is for Rambutan, R - R - Rambutan.
#>  S is for Star apple, S - S - Star apple.
#>  T is for Tamarind, T - T - Tamarind.
#>  U is for Ugli fruit, U - U - Ugli fruit.
#>  V is for Victoria plum, V - V - Victoria plum.
#>  W is for White sapote, W - W - White sapote.
#>  X is for Xigua, X - X - Xigua.
#>  Y is for Yuzu, Y - Y - Yuzu.
#>  Z is for Zucchini, Z - Z - Zucchini.
```

A is for… with countries. There are no recognized countries starting
with some of the letters so we get a warning:

``` r
sing_alphabet(countries)
#> Warning in sing_alphabet(countries): Your wordbag does not contain at least
#> one word for each letter in the English alphabet, some letters will be
#> skipped.
#> A is for Afghanistan, A - A - Afghanistan.
#>  B is for Belgium, B - B - Belgium.
#>  C is for Canada, C - C - Canada.
#>  D is for Denmark, D - D - Denmark.
#>  E is for Equatorial Guinea, E - E - Equatorial Guinea.
#>  F is for France, F - F - France.
#>  G is for Guinea-Bissau, G - G - Guinea-Bissau.
#>  H is for Honduras, H - H - Honduras.
#>  I is for India, I - I - India.
#>  J is for Jordan, J - J - Jordan.
#>  K is for Kosovo, K - K - Kosovo.
#>  L is for Liberia, L - L - Liberia.
#>  M is for Mozambique, M - M - Mozambique.
#>  N is for Nauru, N - N - Nauru.
#>  O is for Oman, O - O - Oman.
#>  P is for Pakistan, P - P - Pakistan.
#>  Q is for Qatar, Q - Q - Qatar.
#>  R is for Russia, R - R - Russia.
#>  S is for Sao Tome and Principe, S - S - Sao Tome and Principe.
#>  T is for Tuvalu, T - T - Tuvalu.
#>  U is for Uzbekistan, U - U - Uzbekistan.
#>  V is for Venezuela, V - V - Venezuela.
#>  Y is for Yemen, Y - Y - Yemen.
#>  Z is for Zimbabwe, Z - Z - Zimbabwe.
```

## Logo credit

The baby face in the logo is Baby by Joris Millot from the [Noun
Project](https://thenounproject.com/).
