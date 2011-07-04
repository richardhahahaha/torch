require 'qt'
require 'torch'
require 'libqttorch'

qt.QImage.fromTensor = function(tensor, scale)
                          return tensor.qttorch.QImageFromTensor(tensor, scale)
                       end

qt.QImage.toTensor = function(self, tensor, scale)
                        if type(tensor) == 'userdata' then
                           return tensor.qttorch.QImageToTensor(self, tensor, scale)
                        else
                           error('tensor expected')
                        end
                     end