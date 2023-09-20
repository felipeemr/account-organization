//
//  CardInformation.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 19/09/23.
//

import UIKit


class CardInformation: UIView {
    
    var labelDescriptionExpense: UILabel = .textBolLabel(20,textColor: .white, description: "Total de gastos:")
    var labelDescriptionValueExpense: UILabel = .textBolLabel(30, textColor: .white, description: "R$ 2.548,00")
    
    // deposit
    var imageDeposit: UIImageView = .iconImageView(width: 24, heigth: 24, namedIcon: "icon-deposit")
    var labelDescriptionDeposit: UILabel = .textBolLabel(15,textColor: .white, description: "Entradas")
    var labelDescriptionValueDeposit: UILabel = .textBolLabel(20, textColor: .white, description: "R$ 100,00")
    // out
    var imageOut: UIImageView = .iconImageView(width: 24, heigth: 24, namedIcon: "icon-out")
    var labelDescriptionOut: UILabel = .textBolLabel(15,textColor: .white, description: "Saídas")
    var labelDescriptionValueOut: UILabel = .textBolLabel(20, textColor: .white, description: "R$ 1.000,00")
     
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        
        backgroundColor = UIColor(red: 14/255, green: 41/255, blue: 84/255, alpha: 1)
        layer.cornerRadius = 10

        // total de despesas
        let stackExpenseTotal = UIStackView(arrangedSubviews: [labelDescriptionExpense,labelDescriptionValueExpense])
        stackExpenseTotal.spacing = 3
        stackExpenseTotal.axis = .vertical
        
        // stack de entradas
        let stackDepositDescripion = UIStackView(arrangedSubviews: [imageDeposit, labelDescriptionDeposit])
        stackDepositDescripion.spacing = 5
        stackDepositDescripion.axis = .horizontal
        
        let stackDeposit = UIStackView(arrangedSubviews: [stackDepositDescripion, labelDescriptionValueDeposit])
        stackDeposit.spacing = 3
        stackDeposit.axis = .vertical
        
        // stack de saidas
        
        let stackOutDescripion = UIStackView(arrangedSubviews: [imageOut, labelDescriptionOut])
        stackOutDescripion.spacing = 5
        stackOutDescripion.axis = .horizontal

        let stackOut = UIStackView(arrangedSubviews: [stackOutDescripion, labelDescriptionValueOut])
        stackOut.spacing = 10
        stackOut.axis = .vertical

        // stack entrada e saida
        let stackDepositOrOut = UIStackView(arrangedSubviews: [stackDeposit, stackOut])
        stackDepositOrOut.axis = .horizontal
        stackDepositOrOut.distribution = .equalSpacing
        
        
        // stack global
        let globalStack = UIStackView(arrangedSubviews: [stackExpenseTotal, stackDepositOrOut])
        globalStack.spacing = 10
        globalStack.axis = .vertical
        
        addSubview(globalStack)
  
        globalStack.fillSuperView(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
