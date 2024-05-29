cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  heart-failure-fatalnon-fatal-cardiac---primary:
    run: heart-failure-fatalnon-fatal-cardiac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  heart-failure-fatalnon-fatal-dissent---primary:
    run: heart-failure-fatalnon-fatal-dissent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-cardiac---primary/output
  heart-failure-fatalnon-fatal-review---primary:
    run: heart-failure-fatalnon-fatal-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-dissent---primary/output
  heart-failure-fatalnon-fatal-pulmonale---primary:
    run: heart-failure-fatalnon-fatal-pulmonale---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-review---primary/output
  chronic-heart-failure-fatalnon-fatal---primary:
    run: chronic-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-pulmonale---primary/output
  heart-failure-fatalnonfatal---primary:
    run: heart-failure-fatalnonfatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: chronic-heart-failure-fatalnon-fatal---primary/output
  heart-failure-fatalnon-fatal-malignant---primary:
    run: heart-failure-fatalnon-fatal-malignant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnonfatal---primary/output
  right-heart-failure-fatalnon-fatal---primary:
    run: right-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-malignant---primary/output
  acute-heart-failure-fatalnon-fatal---primary:
    run: acute-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: right-heart-failure-fatalnon-fatal---primary/output
  hypertensive-heart-failure-fatalnon-fatal---primary:
    run: hypertensive-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: acute-heart-failure-fatalnon-fatal---primary/output
  congestive-heart-failure-fatalnon-fatal---primary:
    run: congestive-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: hypertensive-heart-failure-fatalnon-fatal---primary/output
  diastolic-heart-failure-fatalnon-fatal---primary:
    run: diastolic-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-fatalnon-fatal---primary/output
  cardiomyopathy-heart-failure-fatalnon-fatal---primary:
    run: cardiomyopathy-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: diastolic-heart-failure-fatalnon-fatal---primary/output
  ventricular-heart-failure-fatalnon-fatal---primary:
    run: ventricular-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: cardiomyopathy-heart-failure-fatalnon-fatal---primary/output
  heart-failure-fatalnon-fatal-specified---primary:
    run: heart-failure-fatalnon-fatal-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ventricular-heart-failure-fatalnon-fatal---primary/output
  systolic-heart-failure-fatalnon-fatal---primary:
    run: systolic-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-specified---primary/output
  heart---primary:
    run: heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: systolic-heart-failure-fatalnon-fatal---primary/output
  heart-failure-fatalnon-fatal-shows---primary:
    run: heart-failure-fatalnon-fatal-shows---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: heart---primary/output
  heart-failure-fatalnon-fatal-administration---primary:
    run: heart-failure-fatalnon-fatal-administration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-shows---primary/output
  heart-failure-fatalnon-fatal-third---primary:
    run: heart-failure-fatalnon-fatal-third---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-administration---primary/output
  clinic-heart-failure-fatalnon-fatal---primary:
    run: clinic-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-third---primary/output
  heart-failure-fatalnon-fatal-oedema---primary:
    run: heart-failure-fatalnon-fatal-oedema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: clinic-heart-failure-fatalnon-fatal---primary/output
  patient-heart-failure-fatalnon-fatal---primary:
    run: patient-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-oedema---primary/output
  heart-failure-fatalnon-fatal-assoc---primary:
    run: heart-failure-fatalnon-fatal-assoc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: patient-heart-failure-fatalnon-fatal---primary/output
  heart-failure-fatalnon-fatal-telephone---primary:
    run: heart-failure-fatalnon-fatal-telephone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-assoc---primary/output
  heart-failure-fatalnon-fatal-second---primary:
    run: heart-failure-fatalnon-fatal-second---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-telephone---primary/output
  heart-failure-fatalnon-fatal-practice---primary:
    run: heart-failure-fatalnon-fatal-practice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-second---primary/output
  heart-failure-fatalnon-fatal-hypostasis---primary:
    run: heart-failure-fatalnon-fatal-hypostasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-practice---primary/output
  heart-failure-fatalnon-fatal-verbal---primary:
    run: heart-failure-fatalnon-fatal-verbal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-hypostasis---primary/output
  heart-failure-fatalnon-fatal-reporting---primary:
    run: heart-failure-fatalnon-fatal-reporting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-verbal---primary/output
  heart-failure-fatalnon-fatal-attend---primary:
    run: heart-failure-fatalnon-fatal-attend---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-reporting---primary/output
  heart-failure-fatalnon-fatal-first---primary:
    run: heart-failure-fatalnon-fatal-first---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-attend---primary/output
  heart-failure-fatalnon-fatal-nurse---primary:
    run: heart-failure-fatalnon-fatal-nurse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-first---primary/output
  heart-failure-fatalnon-fatal-referred---primary:
    run: heart-failure-fatalnon-fatal-referred---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-nurse---primary/output
  heart-failure-fatalnon-fatal-education---primary:
    run: heart-failure-fatalnon-fatal-education---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-referred---primary/output
  heart-failure-fatalnon-fatal-congestion---primary:
    run: heart-failure-fatalnon-fatal-congestion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-education---primary/output
  renal-heart-failure-fatalnon-fatal---primary:
    run: renal-heart-failure-fatalnon-fatal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: heart-failure-fatalnon-fatal-congestion---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: renal-heart-failure-fatalnon-fatal---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
