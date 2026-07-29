import CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.CompleteCategoryDefinitions
import Mathlib.CategoryTheory.Limits.Preserves

/-!
# Limits Existence Package
-/

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure LimitsExistencePackage (C : CompleteCategoryPackage) where
  smallLimitsExist : Prop
  smallColimitsExist : Prop
  preservationByFunctors : Prop

structure LimitsExistenceEvidence (C : CompleteCategoryPackage) (L : LimitsExistencePackage C) where
  smallLimitsExistClosed : L.smallLimitsExist
  smallColimitsExistClosed : L.smallColimitsExist
  preservationClosed : L.preservationByFunctors

def limitsExistenceClosed (C : CompleteCategoryPackage) (L : LimitsExistencePackage C) : Prop :=
  L.smallLimitsExist ∧ L.smallColimitsExist ∧ L.preservationByFunctors

theorem limits_existence_closed_from_evidence (C : CompleteCategoryPackage) (L : LimitsExistencePackage C) (E : LimitsExistenceEvidence C L) :
    limitsExistenceClosed C L := by
  exact And.intro E.smallLimitsExistClosed (And.intro E.smallColimitsExistClosed E.preservationClosed)

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse