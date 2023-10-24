import fs from "fs";

const INDENT = "  ";
const RELATION_FIELDS = ["block", "contentRelationship"];

function main() {
  const inputFile = process.argv[2] || "frontmatter.json";
  const inputJson = fs.readFileSync(inputFile, "utf8");

  const outputFile = process.argv[3] || inputFile + ".mmd";

  const config = JSON.parse(inputJson);

  const fieldGroups = config["frontMatter.taxonomy.fieldGroups"];
  const contentTypes = config["frontMatter.taxonomy.contentTypes"];

  const diagram = [];
  diagram.push("---");
  diagram.push("title: Data model");
  diagram.push("---");
  diagram.push("");
  diagram.push("```mermaid");
  diagram.push("erDiagram");

  for (const taxonomy of [...fieldGroups, ...contentTypes]) {
    const name = taxonomy.name || taxonomy.id;

    // add relationships
    diagram.push(
      ...getFields(
        name,
        taxonomy.fields.filter((field) => RELATION_FIELDS.includes(field.type))
      )
    );

    // add taxonomy
    diagram.push(`${INDENT}${name} {`);

    // add taxonomy fields
    diagram.push(
      ...getFields(
        name,
        taxonomy.fields.filter((field) => !RELATION_FIELDS.includes(field.type))
      )
    );

    diagram.push(`${INDENT}}`);
  }

  diagram.push("```");
  diagram.push("");

  fs.writeFileSync(outputFile, diagram.join("\n"), "utf8");
}

function getFields(name, fields, prefix = "") {
  const result = [];

  if (!fields) return result;

  for (const field of fields) {
    if (field.type === "block") {
      for (const fieldGroup of field.fieldGroup) {
        const relation = field.multiple ? "o{" : "||";
        result.push(
          `${INDENT}${name} ||--${relation} ${fieldGroup}: ${field.name}`
        );
      }
    } else if (field.type === "contentRelationship") {
      const relation = field.multiple ? "o{" : "||";
      result.push(
        `${INDENT}${name} ||--${relation} ${field.contentTypeName}: ${field.name}`
      );
    } else if (field.fields) {
      result.push(...getFields(name, field.fields, `${prefix}${field.name}__`));
    } else {
      result.push(`${INDENT}${INDENT}${prefix}${field.name} ${field.type}`);
    }
  }

  return result;
}

main();
