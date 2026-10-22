---
record_type: "evaluation"
provider: "dotnet"
feature: "normalization-workflow"
status: "Supported"
mechanism: "Host API"
syntax:
  - "input.Normalize()"
  - "input.Normalize(NormalizationForm.FormC)"
  - "input.Normalize(NormalizationForm.FormD)"
  - "input.Normalize(NormalizationForm.FormKC)"
  - "input.Normalize(NormalizationForm.FormKD)"
  - "StringNormalizationExtensions.TryNormalize(source, destination, out charsWritten, NormalizationForm.FormC)"
notes: "String.Normalize defaults to NFC and also offers NFD/NFKC/NFKD. .NET 10 adds normalization over spans. Normalize input and deliberately construct patterns for that form; arbitrary regex-source normalization is not assumed safe. Host normalization can depend on ICU/NLS and configuration, so no single host Unicode-data version is established for every deployment."
sources:
  - "https://learn.microsoft.com/en-us/dotnet/api/system.string.normalize?view=net-10.0"
  - "https://learn.microsoft.com/en-us/dotnet/core/whats-new/dotnet-10/libraries#string-normalization-apis-to-work-with-span-of-characters"
  - "https://learn.microsoft.com/en-us/dotnet/core/extensions/globalization-icu"
---
