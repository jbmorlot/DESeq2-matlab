
function [log2FC,FDR] = spec_dhs_launcher_diff_ratio(matrix1,matrix2):
% matrix1: matrix where each line represent a sample in the condition 1
% matrix2: matrix where each line represent a sample in the condition 1
%
%

disp('Normalization ...')
[M1,N1] = size(matrix1);
geom1 = geomean(matrix1);
geom1(geom1==0)=1;
norm1 = median(bsxfun(@rdivide,matrix1,geom1),2);
matrixN1 = bsxfun(@rdivide,matrix1',norm1')';

[M2,N2] = size(matrix2);
geom2 = geomean(matrix2);
geom2(geom2==0)=1;
norm2 = median(bsxfun(@rdivide,matrix2,geom2),2);
matrixN2 = bsxfun(@rdivide,matrix2',norm2')';

disp('Log2FC(mean)...')
mean1 = mean(matrixN1);
mean2 = mean(matrixN2);

log2FC = log2(mean1./mean2)';

disp('Differential Analysis ...')
tLocal = nbintest(matrix1',matrix2','VarianceLink','LocalRegression','SizeFactor',{norm1',norm2'});
FDR = mafdr(tLocal_ij.pValue,'BHFDR',true);

end
