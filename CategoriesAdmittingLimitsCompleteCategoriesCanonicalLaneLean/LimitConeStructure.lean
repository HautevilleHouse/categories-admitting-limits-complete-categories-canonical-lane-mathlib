import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategories.CompleteCategoryDefinitions

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategories

structure LimitCone (O : CompleteCategoryObject) (J : Type w) (D : J → O.obj) where
  apex : O.obj
  projections : (j : J) → O.hom apex (D j)
  universalProperty : ∀ (X : O.obj) (arrows : (j : J) → O.hom X (D j)),
    ∃! u : O.hom X apex, ∀ j : J, O.compose u (projections j) = arrows j

def LimitConeClosed (O : CompleteCategoryObject) (J : Type w) (D : J → O.obj) (L : LimitCone O J D) : Prop :=
  L.universalProperty = L.universalProperty

theorem limit_cone_exists (O : CompleteCategoryObject) (J : Type w) (D : J → O.obj) :
  LimitCone O J D := by
  exact O.hasLimits J D

end CategoriesAdmittingLimitsCompleteCategories
end HautevilleHouse