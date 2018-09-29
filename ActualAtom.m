classdef ActualAtom
    properties
        idNum;
        ReferenceElement;
        BondArray;
        idArray;
        LonePairs;
        Hybridization;
        FormalCharge;
    end
    methods
        function obj = ActualAtom(a, b)
            obj.idNum = b;
            obj.ReferenceElement = a;
            obj.BondArray = [0 0 0 0];
            obj.idArray =   [0 0 0 0];
            obj.LonePairs = 0;
            obj.Hybridization = '';
            obj.FormalCharge = 0;
        end
        
        
        %
        %         function obj = set.BondArray(obj, a)
        %             obj.BondArray = a;
        %
        %         end
        
    end
    
    
end