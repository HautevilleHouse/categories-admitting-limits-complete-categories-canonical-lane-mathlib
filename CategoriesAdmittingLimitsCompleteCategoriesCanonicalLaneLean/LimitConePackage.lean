import CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean

structure LimitConePackage where
  diagram : Type u → Type v
  cone : Type w
  universalProperty : Prop
  limitExists : Prop

structure LimitConeEvidence (L : LimitConePackage) where
  universalPropertyClosed : L.universalProperty
  limitExistsClosed : L.limitExists

def LimitConeClosed (L : LimitConePackage) : Prop :=
  L.universalProperty ∧ L.limitExists

theorem limit_cone_closed_from_evidence (L : LimitConePackage) (E : LimitConeEvidence L) :
    LimitConeClosed L := by
  exact And.intro E.universalPropertyClosed E.limitExistsClosed

end CategoriesAdmittingLimitsCompleteCategoriesCanonicalLaneLean
end HautevilleHouse
