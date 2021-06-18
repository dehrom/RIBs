//___FILEHEADER___

import SwiftUI

struct ___VARIABLE_productName___View: View {
    @EnvironmentObject var viewModel: ___VARIABLE_productName___ViewModel

    var body: some View {
        Text("Hello World!")
    }
}

struct ___VARIABLE_productName___View_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_productName___View().environmentObject(___VARIABLE_productName___ViewModel())
    }
}
