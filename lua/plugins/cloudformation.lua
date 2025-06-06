return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      yamlls = {
        settings = {
          yaml = {
            completions = true,
            schemaStore = {
              url = "https://www.schemastore.org/api/json/catalog.json",
              enable = true,
            },
            schemas = {
              ["https://raw.githubusercontent.com/awslabs/goformation/master/schema/cloudformation.schema.json"] = {
                "*-cfn.yaml",
                "*-cfn.yml",
              },
            },
            customTags = {
              "!Cidr",
              "!Cidr sequence",
              "!And",
              "!And sequence",
              "!If",
              "!If sequence",
              "!Not",
              "!Not sequence",
              "!Equals",
              "!Equals sequence",
              "!Or",
              "!Or sequence",
              "!FindInMap",
              "!FindInMap sequence",
              "!Base64",
              "!Join",
              "!Join sequence",
              "!Ref",
              "!Sub",
              "!Sub sequence",
              "!GetAtt",
              "!GetAZs",
              "!ImportValue",
              "!ImportValue sequence",
              "!Select",
              "!Select sequence",
              "!Split",
              "!Split sequence",
            },
          },
        },
      },
    },
  },
}
