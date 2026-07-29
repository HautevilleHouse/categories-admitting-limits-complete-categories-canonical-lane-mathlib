import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategories.CompleteCategoryDefinitions

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategories

structure Functor (C D : CompleteCategoryObject) where
  mapObj : C.obj → D.obj
  mapHom : {X Y : C.obj} → C.hom X Y → D.hom (mapObj X) (mapObj Y)
  mapId : (X : C.obj) → mapHom (C.identity X) = D.identity (mapObj X)
  mapComp : {X Y Z : C.obj} → (f : C.hom X Y) → (g : C.hom Y Z) → mapHom (C.compose f g) = D.compose (mapHom f) (mapHom g)

structure LimitPreservingFunctor (C D : CompleteCategoryObject) (F : Functor C D) where
  preservesLimits : ∀ (J : Type w) (Dgm : J → C.obj) (L : LimitCone C J Dgm),
    LimitCone D J (λ j => F.mapObj (Dgm j))

def LimitPreservingFunctorClosed (C D : CompleteCategoryObject) (F : Functor C D) (LP : LimitPreservingFunctor C D F) : Prop :=
  LP.preservesLimits = LP.preservesLimits

end CategoriesAdmittingLimitsCompleteCategories
end HautevilleHouse