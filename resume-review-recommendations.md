# Resume Review Recommendations

## Review Status

- Source reviewed: `resume.tex`
- Target profile: Junior DevOps Engineer
- XeLaTeX validation: passed with `resume-review.pdf` generated successfully
- Layout warnings: no `Overfull` or `Underfull` warnings detected
- Scope: recommendations only; `resume.tex` was not changed in this review

## Priority 1: Should Fix

### 1. Fix Summary typo and wording

Current:

```tex
DevOps Engineer with nearly2 years of hands-on experience in Kubernetes and AWS infrastructure.
```

Recommended minimum fix:

```tex
DevOps Engineer with nearly 2 years of hands-on experience in Kubernetes and AWS infrastructure.
```

The phrase `cutting-edge technologies` is generic. Consider replacing it with a more concrete junior-level focus such as:

```tex
Focused on infrastructure automation, reliable application delivery, and continuous improvement.
```

### 2. Change `Now` to `Present`

Current:

```tex
duration={Nov 2025 -- Now}
```

Recommended:

```tex
duration={Nov 2025 -- Present}
```

`Present` is the more standard resume convention and is easier for ATS parsing.

### 3. Remove or reconsider References

The References section takes valuable space and exposes a referee's personal contact details. Most resumes state references only when requested.

Recommended action:

- Remove the entire `References` section from the resume.
- Keep the referee's details in a separate reference document.
- Add `References available upon request` only if a specific application requires it.

## Priority 2: Recommended Improvements

### 4. Clarify the AI-assisted workflow bullet

Current wording:

```tex
\item Set up AI-assisted workflows for YAML conversion and application deployment, and configured GitHub Actions CI/CD using shared modules.
```

Potential concern: `AI-assisted workflows` is interesting but vague. A recruiter may ask what was actually built, configured, or automated.

Use one of these versions depending on the facts:

```tex
\item Configured AI-assisted workflows to convert platform deployment YAML and support application deployment across 20 services.
```

or, if you created reusable skills/modules:

```tex
\item Developed reusable AI-assisted skills for converting platform deployment YAML and supporting application deployment across 20 services.
```

Do not use `developed` unless you actually created the skills rather than only installing or using them.

### 5. Make the incident bullet more concise

Current wording is accurate but long:

```tex
\item Investigated and supported resolution of approximately 5 production incidents using Amazon CloudWatch and Datadog, resolving some independently and collaborating with the team on the rest.
```

Recommended wording:

```tex
\item Investigated approximately 5 production incidents using Amazon CloudWatch and Datadog, resolving some independently and collaborating with the team on the remainder.
```

If the exact number is known, replace `approximately 5` with the exact number. If not, `~5` is shorter but less formal.

### 6. Improve project grammar and ATS keywords

Current:

```tex
\item Deployed a RCA system on Kubernetes.
```

Recommended:

```tex
\item Deployed an RCA system on Kubernetes.
```

Current:

```tex
\item Managed CI/CD and K8s manifests.
```

Recommended:

```tex
\item Managed CI/CD pipelines and Kubernetes manifests.
```

Using the full keyword `Kubernetes` is better for ATS matching than only using `K8s`.

## Priority 3: Optional Improvements

### 7. Add the actual migration outcome if available

The migration bullet already has a strong scope metric: 20 services. It would be stronger with one verified result, such as:

- completed migration with no service downtime
- reduced deployment effort
- standardized deployment configuration
- enabled deployment to EKS through platform-compliant YAML

Do not invent a percentage or uptime metric.

### 8. Consider moving Technical Skills before Work Experience

For a junior DevOps resume, placing Technical Skills directly after Summary can help recruiters and ATS systems see the stack earlier.

Suggested order:

1. Contact Information
2. Summary
3. Technical Skills
4. Work Experience
5. Education
6. Academic Projects
7. Awards and Certificates

This is optional because the current single-column layout is already parseable.

### 9. Reduce duplicate or broad skills

Current skills include both broad and specific entries:

```tex
skills={AWS, Terraform}
skills={AWS EC2, Amazon EKS, Nomad, CloudWatch, Datadog}
```

This is acceptable, but a cleaner grouping would be:

```tex
\skillItem[
    category={Cloud, Containers \& IaC},
    skills={AWS, AWS EC2, Amazon EKS, Nomad, Docker, Kubernetes, Terraform}
] \\
\skillItem[
    category={CI/CD \& Monitoring},
    skills={Git, GitHub, GitHub Actions, Jenkins, ArgoCD, CloudWatch, Datadog}
]
```

Only keep technologies you can explain in an interview.

### 10. Add GitHub if it is relevant to your professional profile

The GitHub link is currently commented out. Add it only if the profile contains relevant public projects and is presentable. The existing Academic Project already links to GitHub, so this is not urgent.

## Accuracy Checks Before Final Export

- [ ] Confirm whether all 20 services were migrated from Nomad on EC2 to EKS.
- [ ] Confirm whether the AI-assisted skills were created, configured, or only used.
- [ ] Confirm the exact number of production incidents.
- [ ] Confirm whether `resolved` is accurate for your role or whether `supported resolution` is safer.
- [ ] Confirm that Terraform, Jenkins, ArgoCD, Docker, and Kubernetes are skills you can discuss from practical experience.
- [ ] Confirm the project date `June 2026` is correct.
- [ ] Confirm the final PDF filename is professional, for example `Phung_Quang_Hung_Resume.pdf`.

## Overall Assessment

The resume is technically compilable, one page, and substantially stronger after adding the FPT migration and incident experience. The highest-value remaining changes are the Summary typo, `Now` to `Present`, removing References, clarifying the AI workflow, and expanding `K8s` to `Kubernetes` for ATS matching.
