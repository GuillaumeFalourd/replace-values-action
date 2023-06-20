# Replace Values Action

<!-- markdownlint-disable MD013 -->
[![Action test on Ubuntu](https://github.com/GuillaumeFalourd/replace-values-action/actions/workflows/ubuntu_action_test.yml/badge.svg)](https://github.com/GuillaumeFalourd/replace-values-action/actions/workflows/ubuntu_action_test.yml) [![Action test on MacOS](https://github.com/GuillaumeFalourd/replace-values-action/actions/workflows/macos_action_test.yml/badge.svg)](https://github.com/GuillaumeFalourd/replace-values-action/actions/workflows/macos_action_test.yml) [![Action test on Windows](https://github.com/GuillaumeFalourd/replace-values-action/actions/workflows/windows_action_test.yml/badge.svg)](https://github.com/GuillaumeFalourd/replace-values-action/actions/workflows/windows_action_test.yml)
<!-- markdownlint-enable MD013 -->

☞ GitHub Action to replace values in a specific file :octocat:

## 📚 Usage

This action performs a split for the `>>` informed in each line of the `parameters` input, to identify the `old value` to replace and the `new value` to set instead.

### Simple value

```yaml
- name: Replace simple value in a specific file
  uses: GuillaumeFalourd/replace-values-action@v1.1
  with:
    file_path: ./path/to/file
    parameters: value1 >> value2
```

### Multiline values

```yaml
- name: Replace multiple values in a specific file
  uses: GuillaumeFalourd/replace-values-action@v1.1
  with:
    file_path: ./path/to/file
    parameters: |
       current_value_1 >> new_value_1
       current_value_2 >> new_value_2
       
```

## ▶️ Action Inputs

Field | Mandatory | Observation
------------ | ------------  | -------------
**file_path** | YES | Path to the file to update.
**parameters** | YES | `value_to_replace >> new_value` (can be an array).

## 🤝 Contributing

☞ If you're interested in contributing to this repository, please follow the [guidelines](https://github.com/GuillaumeFalourd/replace-values-action/blob/main/CONTRIBUTING.md)

## 🏅 Licensed

☞ This repository uses the [Apache License 2.0](https://github.com/GuillaumeFalourd/replace-values-action/blob/main/LICENSE)

<!-- ### Contribuidores

<a href="https://github.com/GuillaumeFalourd/replace-values-action/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=GuillaumeFalourd/replace-values-action" />
</a>

(Criado com [contributors-img](https://contrib.rocks)) -->
