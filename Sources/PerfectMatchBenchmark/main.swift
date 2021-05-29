import Foundation
import CollectionsBenchmark

import PerfectMatchHeckellsDifference
import DeepDiff
import Dwifft
import Differ
import HeckelDiff

var benchmark = Benchmark(title: "Perfect Match Performance Tests")

benchmark.addSimple(
  title: "PerfectMatch",
  input: ([Int], [Int]).self
) { input1, input2 in
  blackHole(HeckellsDifference(of: input1, and: input2))
}

benchmark.addSimple(
  title: "Swift Standart Library",
  input: ([Int], [Int]).self
) { input1, input2 in
  blackHole(input1.difference(from: input2))
}

benchmark.addSimple(
  title: "DeepDiff",
  input: ([Int], [Int]).self
) { input1, input2 in
  blackHole(diff(old: input1, new: input2))
}

benchmark.addSimple(
  title: "Dwifft",
  input: ([Int], [Int]).self
) { input1, input2 in
  blackHole(Dwifft.diff(input1, input2))
}

benchmark.addSimple(
  title: "Differ",
  input: ([Int], [Int]).self
) { input1, input2 in
  blackHole(Differ.patch(from: input1, to: input2))
}

benchmark.addSimple(
  title: "HeckelDiff",
  input: ([Int], [Int]).self
) { input1, input2 in
  blackHole(HeckelDiff.diff(input1, input2))
}

benchmark.main()
