

import Foundation


class FieldSurveyEventJSONLoader {
    
    class func load(fileName: String) -> [FieldSurveyEvent]{
        
        var observations = [FieldSurveyEvent]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            
            observations = FieldSurveyEventJSONParser.parse(data)
        }
        
        return observations
    }
    
}
