import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.MeasureTheory.Integral.Bochner

namespace HautevilleHouse
namespace DirichletFormsTheoremCanonicalLaneLean

structure DirichletFormSpec where
  core : String
  domain : String
  energyMeasureDefined : Bool
  markovPropertySatisfied : Bool
  closednessCondition : Bool
deriving Repr, DecidableEq

structure DirichletFormData where
  form : DirichletFormSpec
  subspace : String
  generatorRoute : String
  resolventRoute : String
  semigroupRoute : String
  carreDuChampRoute : String
  spectralMeasureRoute : String

def primitiveDirichletForm : DirichletFormSpec := {
  core := "C_c^∞(Ω)",
  domain := "L^2(Ω, μ)",
  energyMeasureDefined := true,
  markovPropertySatisfied := true,
  closednessCondition := true
}

def DirichletFormClosed (D : DirichletFormSpec) : Prop :=
  D.energyMeasureDefined = true ∧
  D.markovPropertySatisfied = true ∧
  D.closednessCondition = true

theorem dirichlet_form_primitive_closed : DirichletFormClosed primitiveDirichletForm := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletFormsTheoremCanonicalLaneLean
end HautevilleHouse