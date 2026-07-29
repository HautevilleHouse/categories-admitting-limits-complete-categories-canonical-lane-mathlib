import CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.RiemannianCurvature

/-!
# Complete Category Package
-/

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure CompleteCategoryPackage (G : CategoryWithLimitsPackage) where
  hasProducts : Prop
  hasEqualizers : Prop
  hasPullbacks : Prop
  limitExistence : Prop

structure CompleteCategoryEvidence {G : CategoryWithLimitsPackage}
    (C : CompleteCategoryPackage G) where
  hasProductsClosed : C.hasProducts
  hasEqualizersClosed : C.hasEqualizers
  hasPullbacksClosed : C.hasPullbacks
  limitExistenceClosed : C.limitExistence

def CompleteCategoryClosed {G : CategoryWithLimitsPackage}
    (C : CompleteCategoryPackage G) : Prop :=
  C.hasProducts ∧ C.hasEqualizers ∧ C.hasPullbacks ∧ C.limitExistence

theorem complete_category_closed_from_evidence
    {G : CategoryWithLimitsPackage} (C : CompleteCategoryPackage G)
    (E : CompleteCategoryEvidence C) : CompleteCategoryClosed C := by
  exact And.intro E.hasProductsClosed
    (And.intro E.hasEqualizersClosed
      (And.intro E.hasPullbacksClosed E.limitExistenceClosed))

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse