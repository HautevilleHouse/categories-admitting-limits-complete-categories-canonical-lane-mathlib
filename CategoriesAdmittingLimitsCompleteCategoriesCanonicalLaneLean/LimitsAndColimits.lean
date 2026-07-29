import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure LimitExistencePackage where
  smallCategory : Type u
  diagramType : Type v
  limitExists : Prop
  limitCone : Type w
  limitUniversalProperty : Prop

structure LimitExistenceEvidence (L : LimitExistencePackage) where
  limitExistsClosed : L.limitExists
  limitUniversalPropertyClosed : L.limitUniversalProperty

def LimitExistenceClosed (L : LimitExistencePackage) : Prop :=
  L.limitExists ∧ L.limitUniversalProperty

theorem limit_existence_closed_from_evidence (L : LimitExistencePackage)
    (E : LimitExistenceEvidence L) : LimitExistenceClosed L := by
  exact And.intro E.limitExistsClosed E.limitUniversalPropertyClosed

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse
