import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure FinitelyCompletePackage (C : CategoryObject) where
  hasFiniteLimits : HasFiniteLimits C.carrier
  cokernelPairs : True
  finiteLimitProps : Prop

structure FinitelyCompleteEvidence {C : CategoryObject} (F : FinitelyCompletePackage C) where
  hasFiniteLimitsClosed : F.hasFiniteLimits
  finiteLimitPropsClosed : F.finiteLimitProps

def FinitelyCompleteClosed {C : CategoryObject} (F : FinitelyCompletePackage C) : Prop :=
  F.hasFiniteLimits ∧ F.finiteLimitProps

theorem finitely_complete_closed_from_evidence {C : CategoryObject} (F : FinitelyCompletePackage C) (E : FinitelyCompleteEvidence F) :
    FinitelyCompleteClosed F := by
  exact And.intro E.hasFiniteLimitsClosed E.finiteLimitPropsClosed

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse