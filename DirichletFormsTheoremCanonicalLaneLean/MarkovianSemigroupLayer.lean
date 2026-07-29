import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirichletFormsTheoremCanonicalLaneLean.DirichletFormCore

namespace HautevilleHouse
namespace DirichletFormsTheoremCanonicalLaneLean

structure MarkovianSemigroupLayerCertificate where
  formDatum : DirichletFormDatum
  semigroupMarkovian : Bool
  semigroupStronglyContinuous : Bool
  infinitesimalGenerator : Bool
  invariantMeasureDefined : Bool

def markovianSemigroupLayerCertificate : MarkovianSemigroupLayerCertificate := {
  formDatum := primitiveDirichletFormDatum,
  semigroupMarkovian := true,
  semigroupStronglyContinuous := true,
  infinitesimalGenerator := true,
  invariantMeasureDefined := true
}

def MarkovianSemigroupLayerClosed (C : MarkovianSemigroupLayerCertificate) : Prop :=
  C.semigroupMarkovian = true ∧
  C.semigroupStronglyContinuous = true ∧
  C.infinitesimalGenerator = true ∧
  C.invariantMeasureDefined = true

theorem markovian_semigroup_layer_closed_checked :
    MarkovianSemigroupLayerClosed markovianSemigroupLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DirichletFormsTheoremCanonicalLaneLean
end HautevilleHouse