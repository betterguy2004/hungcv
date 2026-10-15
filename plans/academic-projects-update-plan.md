# Academic Projects Update Plan

## Objective
Improve the Academic Projects section so it better demonstrates hands-on DevOps capabilities, technical ownership, and measurable outcomes without overstating junior-level experience.

## Current issues
- The section is still too generic and reads more like project titles than actual engineering contributions.
- Some bullets describe outcomes, but not the candidate's direct role and responsibilities.
- The DevOps project could better highlight infrastructure automation, CI/CD, and Kubernetes operations.
- The RCA project is strong on metrics, but it can be stronger by adding role, tooling, and deployment context.

## Recommended approach
1. Keep both projects, but rewrite each project to emphasize role + tools + result.
2. Use action verbs tied to DevOps work: provisioned, automated, deployed, configured, monitored, evaluated.
3. Keep the metrics already present (F1 score, A@1, ranking 1st in class).
4. Do not overstate senior-level ownership; frame the work as hands-on and project-based.

## Proposed rewrite for Project 1: Root Cause Analysis in Microservices

### Current direction
- Strong metric-driven project
- Good technical depth
- Missing operational context and role clarity

### Draft wording
- Built and deployed a microservices root-cause analysis framework using distributed tracing data and Kubernetes, enabling automated diagnosis of service failures.
- Implemented the anomaly detection pipeline in Python and ranked root-cause candidates using Causal and Jaccard scoring.
- Achieved F1 score of 0.877 and A@1 of 0.909, improving fault localization accuracy for distributed systems.

### Why this works
- Clear role: built, implemented, achieved
- Shows infrastructure deployment: Kubernetes
- Shows data/ML engineering and diagnostics
- Keeps academic credibility while sounding technical and practical

## Proposed rewrite for Project 2: End-to-end DevOps Pipeline

### Current direction
- Good fit for DevOps junior resume
- Needs stronger operational language and more ownership signal

### Draft wording
- Provisioned AWS infrastructure with Terraform and deployed a microservices application using a full end-to-end DevOps workflow.
- Configured CI/CD pipelines with Jenkins and ArgoCD and managed Kubernetes manifests to support automated delivery and environment consistency.

### Why this works
- Connects directly to AWS, IaC, CI/CD, and Kubernetes
- Sounds like real DevOps responsibility, not just coursework completion
- More credible for junior hiring targets

## Suggested final structure
For each project:
- project title
- team size + date
- one sentence of context/role
- 2 bullets highlighting technical execution and outcomes

## Acceptance criteria
- The section reads like executed DevOps work, not generic course assignments.
- Each bullet shows a concrete action and tool.
- The content remains truthful and aligned with a junior DevOps profile.
- The section remains compact enough to fit the one-page resume layout.

## Next step
Review this draft, then I will apply the approved wording directly into the LaTeX resume file.
