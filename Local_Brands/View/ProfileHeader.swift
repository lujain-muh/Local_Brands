//
//  ProfileHeader.swift
//  LocalBrands
//
//  Created by lujain mohammed on 04/11/1444 AH.
//

import SwiftUI

struct ProfileHeader: View {
    //    @Environment(\.dismiss) var dismiss
    @State var isShowingSheet: Bool = false
    @State private var showingDetail = false
    
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                    
                    Divider()
                    VStack{
                        Spacer()
                        
                        Image("0")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 151, height: 114)
                            .clipShape(Circle())
                            .clipped()
                            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .padding(.horizontal, 700)
                        
                        Text("مزرود متجر ملابس، يشحن لجميع دول العالم،                                                            بإمكانك التسوق أون لاين عن طريق موقعنا الالكتروني")
                            .font(.system(size: 14))
                            .foregroundColor(Color("gray"))
                            .padding(2)
                        HStack{
                            Image(systemName: "globe")
                                .font(.system(size: 18))
                                .foregroundColor(Color("orange"))
                            
                            
                            
                            //                                PostCell()
                            Link("mazrood", destination: URL(string: "www.mazrood.com")!)                            }
                        
                        
                        
                        Spacer()
                    }
                    Spacer()
                    
                    
                }
                .sheet(isPresented: $isShowingSheet ){
                    //     ImagePicker(selectedImage: UIImage())
                    
                    
                }
                //            }                    .toolbar {
                //                ToolbarItemGroup(placement:
                //                        .navigationBarLeading) {
                //                            
                //                            
                //                            Button(action: {
                //                                isShowingSheet = true
                //                            }, label: {
                //                                Image(systemName: "plus.app")
                //                                    .font(.system(size: 18))
                //                                    .foregroundColor(Color("orange"))
                //                            })
                //                        }
                //                //                Button("dissmis") {
                //                //                   dismiss()
                //                
                //                //
                //                
                //                //
                //                ToolbarItemGroup(placement:
                //                        .navigationBarLeading) {
                //                            Button(action: {
                //                                
                //                            }, label: {
                //                                
                //                                NavigationLink(destination: ProFileView()
                //                                    .navigationBarBackButtonHidden(true)){
                //                                        Text("")
                //                                        Image(systemName: "pencil.circle")
                //                                            .font(.system(size: 18))
                //                                        .foregroundColor(Color("orange"))}
                //                            })
                //                        }
                //                
                //                ToolbarItem(placement:
                //                        .navigationBarTrailing) {
                //                            Button(action: {
                //                                
                //                            }, label: {
                //                                Image(systemName:"chevron.forward")
                //                                    .font(.system(size: 18))
                //                                    .foregroundColor(Color("orange"))
                //                            })
                //                        }
                //                
                //            }
                //            .navigationTitle("MZROD")
                //            .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
    }
}
