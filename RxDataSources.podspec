Pod::Spec.new do |s|
  s.name = "RxDataSources"
  s.version = "5.0.3"
  s.summary = "This is a collection of reactive data sources for UITableView and UICollectionView."
  s.description = <<-DESC
  
Fork from the original RxDataSources available in https://github.com/RxSwiftCommunity/RxDataSources.

Original description:
This is a collection of reactive data sources for UITableView and UICollectionView.

It enables creation of animated data sources for table an collection views in just a couple of lines of code.

```swift
let data: Observable<Section> = ...

let dataSource = RxTableViewSectionedAnimatedDataSource<Section>()
dataSource.cellFactory = { (tv, ip, i) in
    let cell = tv.dequeueReusableCell(withIdentifier: "Cell") ?? UITableViewCell(style:.Default, reuseIdentifier: "Cell")
    cell.textLabel!.text = "\(i)"
    return cell
}

// animated
data
    .bind(to: animatedTableView.rx.items(dataSource: dataSource))
    .disposed(by: disposeBag)

// normal reload
data
    .bind(to: tableView.rx.items(dataSource: dataSource))
    .disposed(by: disposeBag)
```
                        DESC
  s.homepage = "https://github.com/devmea/RxDataSources"
  s.license = 'MIT'
  s.author = { "devmea" => "devmea@github" }
  s.source = { :git => "https://github.com/devmea/RxDataSources.git", :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.10'

  s.source_files = 'Sources/RxDataSources/**/*.swift'
  s.dependency 'Differentiator', '5.0'
  s.dependency 'RxSwift', '6.7.0'
  s.dependency 'RxCocoa', '6.7.0'

  s.ios.deployment_target = '14.0'
  s.tvos.deployment_target = '14.0'

end
