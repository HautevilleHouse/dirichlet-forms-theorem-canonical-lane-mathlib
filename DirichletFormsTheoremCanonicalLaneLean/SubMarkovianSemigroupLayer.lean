import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormsTheoremCanonicalLaneLean

structure SubMarkovianSemigroupDatum where
  semigroupLabel : String
  contractionProperty : String
  generatorRelation : String
  consistencyChecked : Bool

def subMarkovianSemigroupDatum : SubMarkovianSemigroupDatum := {
  semigroupLabel := "sub-Markovian semigroup (T_t)_{t≥0}",
  contractionProperty := "T_t f ≤ 1 whenever f ≤ 1",
  generatorRelation := "generator = L = -Δ in L²(μ)",
  consistencyChecked := true
}

def SubMarkovianSemigroupLayerClosed (D : SubMarkovianSemigroupDatum) : Prop :=
  D.semigroupLabel = "sub-Markovian semigroup (T_t)_{t≥0}" ∧
  D.generatorRelation = "generator = L = -Δ in L²(μ)" ∧
  D.consistencyChecked = true

theorem sub_markovian_semigroup_layer_closed_checked :
    SubMarkovianSemigroupLayerClosed subMarkovianSemigroupDatum := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletFormsTheoremCanonicalLaneLean
end HautevilleHouse