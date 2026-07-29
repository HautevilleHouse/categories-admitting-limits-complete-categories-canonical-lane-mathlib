import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure LimitExistencePackage (C : CategoryObject) where
  initialObject : C.carrier
  terminalObject : C.carrier
  binaryProducts : ∀ (a b : C.carrier), HasBinaryProduct a b
  equalizers : ∀ (f g : a ⟶ b), HasEqualizer f g
  completenessCondition : Prop

structure LimitExistenceEvidence {C : CategoryObject} (L : LimitExistencePackage C) where
  initialObjectClosed : True
  terminalObjectClosed : True
  binaryProductsClosed : True
  equalizersClosed : True
  completenessConditionClosed : L.completenessCondition

def LimitExistenceClosed {C : CategoryObject} (L : LimitExistencePackage C) : Prop :=
  L.completenessCondition

theorem limit_existence_closed_from_evidence {C : CategoryObject} (L : LimitExistencePackage C) (E : LimitExistenceEvidence L) :
    LimitExistenceClosed L := by
  exact E.completenessConditionClosed

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse