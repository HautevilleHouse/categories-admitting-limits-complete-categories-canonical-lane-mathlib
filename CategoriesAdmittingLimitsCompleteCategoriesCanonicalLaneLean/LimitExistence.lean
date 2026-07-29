import CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure SmallLimitExistencePackage where
  hasBinaryProducts : Prop
  hasEqualizers : Prop
  hasPullbacks : Prop
  hasTerminal : Prop
  hasAllFiniteLimits : Prop

structure SmallLimitExistenceEvidence (P : SmallLimitExistencePackage) where
  hasBinaryProductsClosed : P.hasBinaryProducts
  hasEqualizersClosed : P.hasEqualizers
  hasPullbacksClosed : P.hasPullbacks
  hasTerminalClosed : P.hasTerminal
  hasAllFiniteLimitsClosed : P.hasAllFiniteLimits

def SmallLimitExistenceClosed (P : SmallLimitExistencePackage) : Prop :=
  P.hasBinaryProducts ∧ P.hasEqualizers ∧ P.hasPullbacks ∧ P.hasTerminal ∧ P.hasAllFiniteLimits

theorem small_limit_existence_closed_from_evidence
    (P : SmallLimitExistencePackage) (E : SmallLimitExistenceEvidence P) :
    SmallLimitExistenceClosed P := by
  exact And.intro E.hasBinaryProductsClosed
    (And.intro E.hasEqualizersClosed
      (And.intro E.hasPullbacksClosed
        (And.intro E.hasTerminalClosed E.hasAllFiniteLimitsClosed)))

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse