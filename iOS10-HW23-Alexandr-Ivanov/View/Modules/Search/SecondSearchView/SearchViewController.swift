import UIKit
import SwiftUI
import SnapKit

struct SecondSearchView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let searchViewController = UINavigationController(rootViewController: SearchViewController())
        return searchViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
}

final class SearchViewController: UIViewController {
    private var items = CategoryItem.items
    
    // MARK: - Outlets
    
    private lazy var colectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(
            SearchCollectionsCell.self,
            forCellWithReuseIdentifier: SearchCollectionsCell.identifier
        )
        collection.register(
            SearchCollectionsHeader.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: SearchCollectionsHeader.identifier
        )
        collection.dataSource = self
        collection.delegate = self
        return collection
    }()
    
    private lazy var searchController: UISearchController = {
        let search = UISearchController()
        search.searchBar.placeholder = "Ваша медиатека"
        return search
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .white
        title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController = searchController
    }
    
    private func setupHierarchy() {
        view.addSubview(colectionView)
    }
    
    private func setupLayout() {
        colectionView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(view)
            $0.bottom.equalTo(view).inset(65)
        }
    }
}

// MARK: - UICollectionViewDataSource

extension SearchViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, 
                        numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, 
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: SearchCollectionsCell.identifier,
            for: indexPath
        ) as? SearchCollectionsCell else { return UICollectionViewCell() }
        cell.update(title: items[indexPath.row].title,
                    imageName: items[indexPath.row].imageName)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, 
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: SearchCollectionsHeader.identifier,
            for: indexPath
        ) as? SearchCollectionsHeader else { return UICollectionReusableView() }
        header.update(title: "Поиск по категориям")
        return header
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension SearchViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, 
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(
            width: (view.frame.width / 2) - 21,
            height: (view.frame.height / 5) - 21
        )
    }
    
    func collectionView(_ collectionView: UICollectionView, 
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, 
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForHeaderInSection section: Int) -> CGSize {
        CGSize(width: view.frame.width, height: 44)
    }
}
