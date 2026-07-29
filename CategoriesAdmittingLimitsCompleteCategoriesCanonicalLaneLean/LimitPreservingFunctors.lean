import CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.CompleteCategoryEvidence

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure LimitPreservingFunctors (A : AdmissibleClass) where
  preservesSmallLimits : Prop
  preservesFiniteLimits : Prop
  reflectsLimits : Prop

structure LimitPreservingFunctorsEvidence (A : AdmissibleClass) (F : LimitPreservingFunctors A) where
  preservesSmallLimitsClosed : F.preservesSmallLimits
  preservesFiniteLimitsClosed : F.preservesFiniteLimits
  reflectsLimitsClosed : F.reflectsLimits

def LimitPreservingFunctorsClosed (A : AdmissibleClass) (F : LimitPreservingFunctors A) : Prop :=
  F.preservesSmallLimits ∧ F.preservesFiniteLimits ∧ F.reflectsLimits

theorem limit_preserving_functors_closed_from_evidence (A : AdmissibleClass) (F : LimitPreservingFunctors A) (E : LimitPreservingFunctorsEvidence A F) :
    LimitPreservingFunctorsClosed A F := by
  exact And.intro E.preservesSmallLimitsClosed (And.intro E.preservesFiniteLimitsClosed E.reflectsLimitsClosed)

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse