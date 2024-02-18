//ps: дизайн готов , чтоб данные менялсь это надо api подключать мне её не предоставили
import SwiftUI

struct AverageCoefficientView: View {
    var body: some View {
        
        VStack {
            Text("Средние коэффициенты")
                .font(.headline)
        }
        
        HStack {
            Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.gray]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 150 ,height: 15 )
                Text("Выигрыш 1.94")
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                Spacer()

        }
        HStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.gray]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 180 ,height: 15 )
            Text("Проигрыш 2.17")
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
            Spacer()
        }
        HStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 90 ,height: 15 )
            Text("Возврат 1.26")
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
            Spacer()
        }


        
        }
    }


struct WinLossRatioView: View {
    var body: some View {
        
        VStack {
            Text("Выигрыши/проигрыши по букмекерам")
                .font(.headline)
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding([.leading, .bottom], -140.0)
                .frame(width: 40.0, height: 40.0)
            Text("32 ставки")
                .padding(.leading, 200.0)
            
            }
            .padding()
            HStack {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 160 , height: 20)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 110 , height: 20)
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 90 , height: 20)
            }
        HStack {
            
            Text("16 (50%)")
                .foregroundColor(.green)
            Spacer()
            Text("11 (34%)")
                .foregroundColor(.red)
            Spacer()
            Text("5 (16%)")
                .foregroundColor(.gray)
        }
    }
}

struct ColorIndicatorView: View {
    var color: Color
    var text: String
    
    var body: some View {
        HStack {
            Rectangle()
                .fill(color)
                .frame(width: 20, height: 20)
            Text(text)
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            AverageCoefficientView()
            WinLossRatioView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
