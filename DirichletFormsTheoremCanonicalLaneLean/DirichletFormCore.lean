import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormsTheoremCanonicalLaneLean

structure DirichletForm where
  domain : Type
  innerProduct : domain → domain → ℝ
  energy : domain → ℝ
  closed : Prop
  Markovian : Prop

def primitiveDirichletForm : DirichletForm := {
  domain := Unit,
  innerProduct := λ _ _ => 0,
  energy := λ _ => 0,
  closed := True,
  Markovian := True
}

structure DirichletFormDatum where
  form : DirichletForm
  generator : String
  resolvent : String
  semigroup : String
  capacity : String

def primitiveDirichletFormDatum : DirichletFormDatum := {
  form := primitiveDirichletForm,
  generator := "self-adjoint generator associated via representation theorem",
  resolvent := "resolvent family derived from the generator",
  semigroup := "Markovian semigroup via functional calculus",
  capacity := "capacity defined via energy functional"
}

end DirichletFormsTheoremCanonicalLaneLean
end HautevilleHouse