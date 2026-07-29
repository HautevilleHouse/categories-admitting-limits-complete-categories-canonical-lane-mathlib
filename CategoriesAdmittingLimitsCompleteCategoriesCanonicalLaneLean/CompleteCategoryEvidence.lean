import CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.LimitsPackage

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure CompleteCategoryEvidence (A : AdmissibleClass) where
  smallLimitsExist : Prop
  finiteLimitsExist : Prop
  completenessProof : Prop

structure CompleteCategoryEvidenceClosed (A : AdmissibleClass) (E : CompleteCategoryEvidence A) where
  smallLimitsExistClosed : E.smallLimitsExist
  finiteLimitsExistClosed : E.finiteLimitsExist
  completenessProofClosed : E.completenessProof

def CompleteCategoryEvidenceClosure (A : AdmissibleClass) (E : CompleteCategoryEvidence A) : Prop :=
  E.smallLimitsExist ∧ E.finiteLimitsExist ∧ E.completenessProof

theorem complete_category_evidence_closed_from_evidence (A : AdmissibleClass) (E : CompleteCategoryEvidence A) (C : CompleteCategoryEvidenceClosed A E) :
    CompleteCategoryEvidenceClosure A E := by
  exact And.intro C.smallLimitsExistClosed (And.intro C.finiteLimitsExistClosed C.completenessProofClosed)

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse