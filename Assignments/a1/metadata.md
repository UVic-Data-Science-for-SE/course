# Gender and Code Review (CR) Metadata

## Fields
- Gender: 0 (male) or 1 (female)
- isGenderNeutral: is the profile gender neutral (1)
- request_id: unique ID for the code review (CR)
- insertions: number of lines added
- deletions: number of lines deleted
- patchSize: number of changed lines per CR
- numPatch: number of iterations in a CR (commits or reviews)
- isAccepted: CR was merged (1) or abandoned (0)
- isBugFix: was the CR for a patch to fix a bug (1) or no (0)?
- tenure: months on the project
- owner: ID of submitter, anonymized
- totalCommit: number of commits the CR proposer has made to the project.
- revExp: number of code reviews participated in, excluding those the person submitted.
- reviewInterval: seconds between creating CR and closing CR.
- fileCount: files included in the CR
- numNewFiles: number of previously unknown files in the CR.
- dirCount: directories included in the CR
- cyCmplx: cyclomatic complexity per CR set
- cmtVolume: ratio of new lines that are comment lines (i.e., 1.0 = all comments)
