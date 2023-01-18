//
//  RobertoView.swift
//  FMHotel
//
//  Created by Roberto D'Anna on 17/01/23.
//

import SwiftUI
import FMProKit

struct RobertoView: View {
    var api:FMODataAPI! = FMODataAPI("napoli.fm-testing.com", "Hotel", "Admin", "Admin")
    let newRecord = UserSupport(fiscalCode: "KSLMD", name: "Maria", surname: "Ciao")
    let editedRecord = UserSupport(fiscalCode: "DSHDHSDS", name: "Maria", surname: "Vincenzi")
    let image = UIImage(named: "immaginexd.png")
    
    @State var imageRecord = UIImage()
    var body: some View {
        Text("Hello, World!")
            .task {
                do{
                    let userList: [UserSupport] = try await api.getTable("User")
//                    print(userList)
                } catch{
                    print(error)
                }
            }
        Button {
            Task{
                do{
                    try await api.createRecord("User", newRecord)
                    print(newRecord)
                } catch{
                    print(error)
                }
            }
        } label: {
            Text("Post Record")
        }
        Button {
            Task{
                do{
                    try await api.deleteRecord("User", "")
                } catch{
                    print(error)
                }
            }
        } label: {
            Text("Delete Record")
        }
        Button {
            Task{
                do{
                    let convert = image?.pngData()
                    let photoRecord = UserSupport2(fiscalCode: "DSHDHSDS", photo: convert ?? Data())

                    try await api.editRecord("User", "DSHDHSDS", photoRecord)
                } catch{
                    print(error)
                }
            }
        } label: {
            Text("Edit Record")
        }
        Button {
            Task{
                do{
                   imageRecord = try await api.fetchImageByRowID("User", "photo", "srfgsfdfs") ?? UIImage()
                    
                } catch{
                    print(error)
                }
            }
        } label: {
            Text("Get Image of Record")
        }
        
        Image(uiImage: imageRecord)
            .resizable()
            .frame(width: 20, height: 20)
            .padding()
        
        Button {
            Task{
                do{
                    let filteredName : [UserSupport] = try await api.getTable("User", "name", "'Maria'", .equal)
                    print("FILTRATO: \(filteredName)")
                    
                } catch{
                    print(error)
                }
            }
        } label: {
            Text("Filter records")
        }
        Button {
            Task{
                do{
                    try await api.deleteRecord("User", "surname", "'Ciao'", .equal)
                } catch{
                    print(error)
                }
            }
        } label: {
            Text("Delete Filtered Record")
        }
        
        Button {
            Task{
                do{
                    let first3 : [UserSupport] = try await api.getTopTable("User", 3)
                    print(first3)
                    
                } catch{
                    print(error)
                }
            }
        } label: {
            Text("First 3 elements")
        }
    }
}

/*struct RobertoView_Previews: PreviewProvider {
    static var previews: some View {
        RobertoView().task {
            
        }
    }
}
*/
