import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure CompleteCategory where
  category : Type u
  hasLimits : Prop
  limitPreservation : Prop
  smallLimitClosure : Prop
  completenessClosed : hasLimits ∧ limitPreservation ∧ smallLimitClosure

structure CompleteCategoryEvidence (C : CompleteCategory) where
  hasLimitsClosed : C.hasLimits
  limitPreservationClosed : C.limitPreservation
  smallLimitClosureClosed : C.smallLimitClosure

def CompleteCategoryClosed (C : CompleteCategory) : Prop :=
  C.hasLimits ∧ C.limitPreservation ∧ C.smallLimitClosure

theorem complete_category_closed_from_evidence (C : CompleteCategory)
    (E : CompleteCategoryEvidence C) : CompleteCategoryClosed C := by
  exact And.intro E.hasLimitsClosed (And.intro E.limitPreservationClosed E.smallLimitClosureClosed)

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse