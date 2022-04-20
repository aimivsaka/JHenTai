# JHenTai

English | [简体中文](https://github.com/jiangtian616/JHenTai/blob/master/README_cn.md)

## Description

An E-Hentai app for mobile.

Still in starting stage, welcome to submit issues.

## Download & Install

[Download](https://github.com/jiangtian616/JHenTai/releases)

Install for Android: download .apk according to your device architecture and install.

Install for ios: download .ipa, then use  [AltStore](https://altstore.io) or SideLoadly to sign。

## Help With Translation

Please submit a PR if you want to help with translation.

[steps](https://github.com/jiangtian616/JHenTai#Translation)

## Develop Motivation

My first project With Flutter. I aim at getting familiar with Flutter during development. Devices I use include Android phone and
Ipad, E-hentai apps I used before have several bugs, and I don't understand source code because I have no development experience
with Android or ios, so I choose JHenTai to become my first Flutter Project.

## References

Layout and style references:

- [FEhviewer](https://github.com/honjow/FEhViewer) :Mainly
- [EHPanda](https://github.com/tatsuz0u/EhPanda)
- [EHViewer](https://gitlab.com/NekoInverter/EhViewer)

Tag translation:

- [EhTagTranslation](https://github.com/EhTagTranslation/Database)

mush thanks to these projects🙇‍

## Screenshots

### Gallery & Search
<img width="250" style="margin-right:10px" src="screenshot/1.jpg"/><img width="250" style="margin-right:10px" src="screenshot/2.jpg"/><img width="250" style="margin-right:10px" src="screenshot/3.jpg"/>

### Gallery Detail
<img width="250" src="screenshot/4.jpg"/>

### Tablet Layout
<img width="770" src="screenshot/0.png"/>

## Main Features

- [x] GalleryPage, Popular, Favorite, Watched, History, support multiple gallery list style
- [x] search, search suggestion, tap tag to search, file search, jump to a certain page
- [x] online reading and download, support restore download task
- [x] archive download and automatic unpacking and reading
- [x] favorite, rating, torrent, archive, statistics, share
- [x] password login, Cookie login, web login
- [x] support EX site(domain fronting optional)
- [x] vote for Tag, watch and hidden tags
- [x] comment, vote for comment
- [x] Fingerprint unlock

## Feature Todo

## Improvement & Todo

- [ ] use isolate to download

## Translation

> [languageCode](https://github.com/unicode-org/cldr/blob/master/common/validity/language.xml)
>
> [countryCode](https://github.com/unicode-org/cldr/blob/master/common/validity/region.xml)

1. Copy `/lib/src/l18n/en_US.dart ` and rename to `{your_languageCode}_{your_countryCode}.dart`
2. Rename classname in new file(optional)
3. Modify k-v pairs in method `keys` ,translate values to your language
4. Enter `/lib/src/l18n/locale_text.dart ` , add a new k-v pair in method `keys` => `{your_languageCode}_{your_countryCode} : {your_className}.keys()`
5. Enter `/lib/src/consts/locale_consts.dart`, add a new k-v pair in property `localeCode2Description`: `{your_languageCode}_{your_countryCode} : {languageDescription}`

## Bug

## Main Dart Dependencies

- [get](https://pub.flutter-io.cn/packages/get): dependency management, state management, l18n, NoSQL
- [dio](https://pub.flutter-io.cn/packages?q=dio): network
- [extendedImage](https://pub.flutter-io.cn/packages/extended_image): image
- [drift](https://pub.flutter-io.cn/packages/drift): database
