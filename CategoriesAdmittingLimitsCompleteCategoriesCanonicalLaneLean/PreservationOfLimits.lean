import CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.CompleteCategory

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure PreservationOfLimitsPackage {C D : CompleteCategoryPackage} (F : C.category → D.category) where
  preservesBinaryProducts : Prop
  preservesEqualizers : Prop
  preservesPullbacks : Prop
  preservesTerminal : Prop
  preservesAllFiniteLimits : Prop
  preservesSmallLimits : Prop

structure PreservationOfLimitsEvidence {C D : CompleteCategoryPackage} {F : C.category → D.category}
    (P : PreservationOfLimitsPackage F) where
  preservesBinaryProductsClosed : P.preservesBinaryProducts
  preservesEqualizersClosed : P.preservesEqualizers
  preservesPullbacksClosed : P.preservesPullbacks
  preservesTerminalClosed : P.preservesTerminal
  preservesAllFiniteLimitsClosed : P.preservesAllFiniteLimits
  preservesSmallLimitsClosed : P.preservesSmallLimits

def PreservationOfLimitsClosed {C D : CompleteCategoryPackage} {F : C.category → D.category}
    (P : PreservationOfLimitsPackage F) : Prop :=
  P.preservesBinaryProducts ∧ P.preservesEqualizers ∧ P.preservesPullbacks ∧
  P.preservesTerminal ∧ P.preservesAllFiniteLimits ∧ P.preservesSmallLimits

theorem preservation_of_limits_closed_from_evidence
    {C D : CompleteCategoryPackage} {F : C.category → D.category}
    (P : PreservationOfLimitsPackage F) (E : PreservationOfLimitsEvidence P) :
    PreservationOfLimitsClosed P := by
  exact And.intro E.preservesBinaryProductsClosed
    (And.intro E.preservesEqualizersClosed
      (And.intro E.preservesPullbacksClosed
        (And.intro E.preservesTerminalClosed
          (And.intro E.preservesAllFiniteLimitsClosed
            E.preservesSmallLimitsClosed))))

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse