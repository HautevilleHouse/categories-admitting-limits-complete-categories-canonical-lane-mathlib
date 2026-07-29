import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategories.CompleteCategoryDefinitions

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategories

structure SmallCompleteCategory (O : CompleteCategoryObject) where
  smallLimits : ∀ (J : Type u) [Small.{u} J] (D : J → O.obj), LimitCone O J D

def SmallCompleteCategoryClosed (O : CompleteCategoryObject) (S : SmallCompleteCategory O) : Prop :=
  S.smallLimits = S.smallLimits

theorem small_complete_from_complete (O : CompleteCategoryObject) : SmallCompleteCategory O where
  smallLimits := λ J _ D => O.hasLimits J D

end CategoriesAdmittingLimitsCompleteCategories
end HautevilleHouse