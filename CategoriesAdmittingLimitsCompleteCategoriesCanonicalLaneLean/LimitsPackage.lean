import CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure LimitsPackage (A : AdmissibleClass) where
  hasSmallLimits : Prop
  hasFiniteLimits : Prop
  limitPreservingFunctors : Prop
  completeness : Prop

structure LimitsEvidence (A : AdmissibleClass) (L : LimitsPackage A) where
  hasSmallLimitsClosed : L.hasSmallLimits
  hasFiniteLimitsClosed : L.hasFiniteLimits
  limitPreservingFunctorsClosed : L.limitPreservingFunctors
  completenessClosed : L.completeness

def LimitsClosed (A : AdmissibleClass) (L : LimitsPackage A) : Prop :=
  L.hasSmallLimits ∧ L.hasFiniteLimits ∧ L.limitPreservingFunctors ∧ L.completeness

theorem limits_closed_from_evidence (A : AdmissibleClass) (L : LimitsPackage A) (E : LimitsEvidence A L) :
    LimitsClosed A L := by
  exact And.intro E.hasSmallLimitsClosed (And.intro E.hasFiniteLimitsClosed (And.intro E.limitPreservingFunctorsClosed E.completenessClosed))

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse