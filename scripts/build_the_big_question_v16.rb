#!/usr/bin/env ruby

require "fileutils"
require "pathname"

ROOT = Pathname(__dir__).parent
INTRO_PATH = ROOT / "trash-end/the-big-question/drafts/introduction-it-1.0-rc1.md"
BASE_PATH = ROOT / "trash-end/the-big-question/legacy/it/essay-it-v15-gpt.md"
OUTPUT_PATH = ROOT / "trash-end/the-big-question/current/the-big-question-it-v16-rc1.0.md"

intro_parts = INTRO_PATH.read.split(/^---\s*$/)
abort "Could not isolate the publishable introduction" if intro_parts.length < 3

intro = intro_parts[1].strip
intro = intro.gsub(%r{\.\./legacy/it/essay-it-v15-gpt\.md#}, "#")

base = BASE_PATH.read
body_start = base.index(/^## I\. La trappola antropocentrica$/)
abort "Could not find the first v15 chapter" unless body_start

body = base[body_start..].strip
body = body.sub("## V. Un ponte, e le sue crepe", "## V. Un ponte e le sue crepe")

anchors = {
  "## I. La trappola antropocentrica" => "i-la-trappola-antropocentrica",
  "## II. Il codice sotto la pelle" => "ii-il-codice-sotto-la-pelle",
  "## III. Il prossimo gradino" => "iii-il-prossimo-gradino",
  "## IV. Oltre l'entropia" => "iv-oltre-lentropia",
  "## V. Un ponte e le sue crepe" => "v-un-ponte-e-le-sue-crepe",
  "## VI. The Big Question" => "vi-the-big-question",
  "## Riferimenti" => "riferimenti"
}

anchors.each do |heading, anchor|
  abort "Missing heading: #{heading}" unless body.include?(heading)

  body = body.sub(heading, %(<a id="#{anchor}"></a>\n\n#{heading}))
end

header = <<~MARKDOWN
  # The Big Question

  **Versione:** v16-rc1.0  
  **Stato:** release candidate per revisione  
  **Base:** corpo italiano v15 con nuova introduzione e navigazione approvate

MARKDOWN

FileUtils.mkdir_p(OUTPUT_PATH.dirname)
OUTPUT_PATH.write("#{header}#{intro}\n\n#{body}\n")

puts "Built #{OUTPUT_PATH.relative_path_from(ROOT)}"
