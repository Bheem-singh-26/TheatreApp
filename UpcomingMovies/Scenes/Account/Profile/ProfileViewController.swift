//
//  ProfileViewController.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 3/20/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

class ProfileViewController: UITableViewController, Storyboarded {
    
    static var storyboardName: String = "Account"
    
    private var dataSource: ProfileDataSource!
    
    var viewModel: ProfileViewModelProtocol?
    weak var delegate: ProfileViewControllerDelegate?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupBindables()
        
        viewModel?.getAccountDetails()
    }
    
    // MARK: - Private
    
    private func setupUI() {
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.registerNib(cellType: ProfileAccountInfoTableViewCell.self)
        tableView.registerNib(cellType: ProfileSelectableOptionTableViewCell.self)
        tableView.register(cellType: ProfileSignOutTableViewCell.self)
        
        setupDataSource()
    }
    
    private func setupDataSource() {
        dataSource = ProfileDataSource(viewModel: viewModel)
        tableView.dataSource = dataSource
    }
    
    private func reloadAccountInfo() {
        setupDataSource()
        tableView.performBatchUpdates({
            self.tableView.reloadSections(IndexSet(integer: 0), with: .none)
        }, completion: nil)
    }
    
    private func showSignOutActionSheet() {
        let signOutAction = UIAlertAction(title: LocalizedStrings.signOut.localized,
                                          style: .destructive) { _ in
            self.delegate?.profileViewController(didTapSignOutButton: true)
        }
        showSimpleActionSheet(title: LocalizedStrings.signOutConfirmationTitle.localized,
                              message: nil, action: signOutAction)
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        viewModel?.reloadAccountInfo = { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.reloadAccountInfo()
        }
    }
    
    // MARK: - Actions
    
    @IBAction func signOutButtonAction(_ sender: Any) {
       delegate?.profileViewController(didTapSignOutButton: true)
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let viewModel = viewModel else { return }
        switch viewModel.section(at: indexPath.section) {
        case .collections:
            let collectionOption = viewModel.collectionOption(at: indexPath.row)
            delegate?.profileViewController(didTapCollection: collectionOption)
        case .groups:
            let groupOption = viewModel.groupOption(at: indexPath.row)
            delegate?.profileViewController(didTapGroup: groupOption)
        case .signOut:
            showSignOutActionSheet()
        case .accountInfo:
            break
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let viewModel = viewModel else { return 0 }
        switch viewModel.section(at: indexPath.section) {
        case .accountInfo:
            return 75.0
        case .collections, .groups, .signOut:
            return 50.0
        }
    }

}
