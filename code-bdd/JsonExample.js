import {Paragraph, WikiPage} from "./Model";

export function parse(text) {
  let rawJson = JSON.parse(text);

  let sections = rawJson.sections.map(sec => {
    return remapSection(sec)
  });

  return new WikiPage(rawJson.title, rawJson.pageid, sections)
}

function remapSection(section) {
  let mappedSection = {};

  mappedSection.heading = section.heading;
  mappedSection.paragraphs = section.paragraphs_list.map(function (it) {
    return new Paragraph(it.paragraph_id, it.body)
  });

  if (section.sections) {
    mappedSection.sections = section.sections.map(function (it) {
      return remapSection(it)
    });
  }
  return mappedSection;
}
