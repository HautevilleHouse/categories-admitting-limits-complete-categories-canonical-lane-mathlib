import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.CompleteCategory

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure AdmittedLimitObject where
  completeCategory : CompleteCategoryPackage
  limitCompleteness : CompleteCategoryClosed completeCategory
  conclusion : limitCompleteness

structure AdmissibleClass where
  object : AdmittedLimitObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse
