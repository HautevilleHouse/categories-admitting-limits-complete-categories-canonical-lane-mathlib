import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategories.CompleteCategoryDefinitions
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategories.LimitPreservingFunctor

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategories

structure AdjointPair (C D : CompleteCategoryObject) (F : Functor C D) (G : Functor D C) where
  unit : {X : C.obj} → C.hom X (G.mapObj (F.mapObj X))
  counit : {Y : D.obj} → D.hom (F.mapObj (G.mapObj Y)) Y
  triangleLeft : {X : C.obj} → D.compose (F.mapHom (unit (X := X))) (counit (Y := F.mapObj X)) = D.identity (F.mapObj X)
  triangleRight : {Y : D.obj} → C.compose (unit (X := G.mapObj Y)) (G.mapHom (counit (Y := Y))) = C.identity (G.mapObj Y)

theorem right_adjoint_preserves_limits (C D : CompleteCategoryObject) (F : Functor C D) (G : Functor D C)
    (adj : AdjointPair C D F G) (J : Type w) (Dgm : J → D.obj) (L : LimitCone D J Dgm) :
    LimitCone C J (λ j => G.mapObj (Dgm j)) := by
  sorry

theorem limit_preserving_functor_adjoint (C D : CompleteCategoryObject) (F : Functor C D)
    (preserves : LimitPreservingFunctor C D F) : { G : Functor D C & AdjointPair C D F G } := by
  sorry

def AdjointFunctorTheoremStatement (C D : CompleteCategoryObject) : Prop :=
  ∀ F : Functor C D, LimitPreservingFunctor C D F → ∃ G : Functor D C, AdjointPair C D F G

end CategoriesAdmittingLimitsCompleteCategories
end HautevilleHouse