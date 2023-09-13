USING EXTERNAL FUNCTION predict_func(age INTEGER) 
    RETURNS DOUBLE
    SAGEMAKER 'my-r-model-sample-02-2021-09-07-23-09-15-479' 
SELECT age, predict_func(age) AS flag
     FROM "default"."directmarketing";