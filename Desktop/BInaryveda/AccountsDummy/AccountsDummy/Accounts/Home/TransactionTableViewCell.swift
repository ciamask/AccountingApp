//
//  TransactionTableViewCell.swift
//  TestApp
//
//  Created by Shreeya Maskey on 9/12/21.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {

    @IBOutlet weak var transactionTypeLabel: UILabel!
    @IBOutlet weak var remarksLabel: UILabel!
    @IBOutlet weak var transactionAmount: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(with data: Transaction) {
        if data.type == "credit" {
            transactionTypeLabel.textColor = .systemGreen
            remarksLabel.textColor = .systemGreen
            transactionAmount.textColor = .systemGreen
        }
        if data.type == "debit" {
            transactionTypeLabel.textColor = .systemRed
            remarksLabel.textColor = .systemRed
            transactionAmount.textColor = .systemRed
        }
        transactionTypeLabel.text = data.type?.uppercased()
        remarksLabel.text = data.title
        transactionAmount.text = "$ " + String(data.transactionAmount ?? 0)
    }
    
    
    
}
