---
title: "Fight against COVID-19"
description: "A real‑time fever pre‑screening application"
pubDate: "Jul 7 2020"
heroImage: "/blog/termal_1.png"
tags: ["image processing", "face detection", "face recognition"]
---
During the COVID‑19 pandemic we developed a real‑time fever pre‑screening application combining face detection with non‑contact thermal measurement. The system identifies faces inside configurable regions of interest, stabilizes the detection to reduce jitter, and then measures apparent skin temperature at physiologically consistent points (inner canthi or, as a fallback, the forehead). The goal was to support throughput in semi‑controlled entry points while minimizing operator workload. Although not a substitute for clinical evaluation, careful calibration and emissivity handling improved repeatability under shifting ambient conditions. Future iterations can incorporate on‑device bias correction and environmental compensation.

![Thermal screening interface showing detected face and temperature overlay](/blog/termal_1.png "Prototype fever detection UI")
