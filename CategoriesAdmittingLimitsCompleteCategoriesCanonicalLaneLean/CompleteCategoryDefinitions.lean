import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategories

structure CompleteCategoryObject where
  obj : Type u
  hom : obj → obj → Type v
  identity : (X : obj) → hom X X
  compose : {X Y Z : obj} → hom X Y → hom Y Z → hom X Z
  idLeft : {X Y : obj} → (f : hom X Y) → compose (identity X) f = f
  idRight : {X Y : obj} → (f : hom X Y) → compose f (identity Y) = f
  associativity : {X Y Z W : obj} → (f : hom X Y) → (g : hom Y Z) → (h : hom Z W) → compose (compose f g) h = compose f (compose g h)
  hasLimits : (J : Type w) → (D : (J → obj)) → (limitCone : (limit : obj) × (π : {j : J} → hom limit (D j)) × (∀ (c : obj) (σ : {j : J} → hom c (D j)), {u : hom c limit | ∀ j : J, compose u (π j) = σ j}))

def CompleteCategoryAdmittedObject (O : CompleteCategoryObject) : Prop :=
  O.hasLimits = O.hasLimits

end CategoriesAdmittingLimitsCompleteCategories
end HautevilleHouse