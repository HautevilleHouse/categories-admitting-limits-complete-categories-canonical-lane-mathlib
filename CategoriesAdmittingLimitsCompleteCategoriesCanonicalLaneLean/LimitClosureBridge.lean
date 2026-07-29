import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompleteCategoryClosed (interpretation A)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion


end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse