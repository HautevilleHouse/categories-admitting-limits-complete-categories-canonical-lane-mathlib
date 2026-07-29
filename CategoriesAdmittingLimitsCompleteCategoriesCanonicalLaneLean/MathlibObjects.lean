import CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.CategoryTheory.Category.Basic

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CompleteCategorySpace where
  carrier : Type u
  categoryStruct : Category.{v,u} carrier

structure CompleteCategoryAdmittedObject where
  space : CompleteCategorySpace
  hasAllLimits : Prop
  hasAllColimits : Prop
  complete : Prop
  cocomplete : Prop
  conclusion : complete ∧ cocomplete

structure CompleteCategoryEndgameState where
  object : CompleteCategoryAdmittedObject

def CompleteCategoryWitnessClosed (O : CompleteCategoryAdmittedObject) : Prop :=
  O.conclusion

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse