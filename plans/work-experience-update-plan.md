# Work Experience Update Plan

## Objective

Update the FPT Software entry in `resume.tex` so it reflects real junior DevOps experience without overstating ownership or seniority.

## Confirmed Experience

- Contributed to the migration of 20 services from Nomad workloads hosted on AWS EC2 to Amazon EKS.
- Prepared platform-compliant YAML files for application deployment on Nomad and EKS; the platform team provided the underlying infrastructure.
- Set up AI-assisted skills to support YAML conversion and application deployment workflows.
- Used GitHub Actions with shared modules for CI/CD across the services.
- Investigated and resolved production incidents using Amazon CloudWatch and Datadog.

## Information To Verify Before Editing

- [ ] Confirm the exact name and scope of the AI-assisted skills before naming them in the CV.
- [ ] Confirm whether all 20 services were migrated from Nomad on EC2 to EKS or whether 20 is the total service scope across related work.
- [ ] Confirm whether the shared GitHub Actions modules were consumed, customized, or developed by the candidate.
- [ ] Add any verified outcome such as deployment time, migration completion, downtime, or pipeline standardization.

## Recommended FPT Bullet Structure

Keep the FPT entry to 2-3 bullets. Use precise junior-level wording and connect each technology to an actual responsibility.

### Candidate Draft

```tex
\item Contributed to migrating 20 services from Nomad on AWS EC2 to Amazon EKS by adapting YAML deployment configurations to platform standards.
\item Set up AI-assisted skills for YAML conversion and deployment workflows, and configured GitHub Actions CI/CD using shared modules across the services.
\item Investigated production incidents using CloudWatch and Datadog, resolving some independently and collaborating with the team on the rest.
```

Use `approximately 5` only if the incident count is not exact. Replace it with the exact count when available.

## Wording Guidelines

Prefer:

- `contributed to`
- `prepared`
- `configured`
- `used`
- `investigated`
- `resolved`
- `collaborated with`

Avoid unless factually accurate:

- `architected`
- `led`
- `owned`
- `designed the entire platform`
- `eliminated incidents`
- `managed all production infrastructure`

## Technical Skills Consistency

Only repeat technologies in Work Experience when they were used at FPT. Keep the complete tool inventory in `Technical Skills`, but use Work Experience to demonstrate practical application and scope.

Confirmed tools and platforms for the FPT project:

- AWS EC2
- Amazon EKS
- Nomad
- GitHub Actions
- CloudWatch
- Datadog

Only add Terraform, Docker, Kubernetes, Linux, or other tools if they were used directly in this FPT work.

## Validation Checklist

- [x] Confirm the service scope: 20 services.
- [x] Confirm the migration path: Nomad on AWS EC2 to Amazon EKS.
- [x] Confirm the CI/CD platform: GitHub Actions with shared modules.
- [x] Confirm incident tooling: CloudWatch and Datadog.
- [ ] Confirm the exact incident count and whether all 5 incidents were production incidents.
- [ ] Confirm the exact name and implementation scope of the AI-assisted skills.
- [ ] Compile `resume.tex` with the existing LaTeX toolchain.
- [ ] Check that the new bullets fit the existing one-page layout.
- [ ] Check for overfull lines and malformed LaTeX syntax.
- [ ] Verify that the wording remains credible for a junior DevOps Engineer.
- [ ] Update `Technical Skills` only if a tool is missing and genuinely used.
