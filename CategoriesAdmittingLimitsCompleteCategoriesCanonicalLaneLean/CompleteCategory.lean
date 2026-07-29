import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.LimitsAndColimits

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure CompleteCategoryPackage where
  underlyingCategory : Type u
  allSmallLimitsExist : Prop
  limitExistence : LimitExistencePackage
  compatibility : Prop

structure CompleteCategoryEvidence (C : CompleteCategoryPackage) where
  allSmallLimitsExistClosed : C.allSmallLimitsExist
  limitExistenceClosed : LimitExistenceClosed C.limitExistence
  compatibilityClosed : C.compatibility

def CompleteCategoryClosed (C : CompleteCategoryPackage) : Prop :=
  C.allSmallLimitsExist ∧ LimitExistenceClosed C.limitExistence ∧ C.compatibility

theorem complete_category_closed_from_evidence (C : CompleteCategoryPackage)
    (E : CompleteCategoryEvidence C) : CompleteCategoryClosed C := by
  exact And.intro E.allSmallLimitsExistClosed
    (And.intro E.limitExistenceClosed E.compatibilityClosed)

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse
