import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

def ConstrainedCompleteCategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_complete_category_endgame (A : AdmissibleClass) :
    ConstrainedCompleteCategoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse
