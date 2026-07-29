import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure LimitConstructionPackage where
  diagram : Type u
  limitObject : Type v
  universalProperty : Prop
  existenceDerived : Prop
  uniquenessDerived : Prop
  constructionClosed : existenceDerived ∧ uniquenessDerived

structure LimitConstructionEvidence (P : LimitConstructionPackage) where
  existenceDerivedClosed : P.existenceDerived
  uniquenessDerivedClosed : P.uniquenessDerived

def LimitConstructionClosed (P : LimitConstructionPackage) : Prop :=
  P.existenceDerived ∧ P.uniquenessDerived

theorem limit_construction_closed_from_evidence (P : LimitConstructionPackage)
    (E : LimitConstructionEvidence P) : LimitConstructionClosed P := by
  exact And.intro E.existenceDerivedClosed E.uniquenessDerivedClosed

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse