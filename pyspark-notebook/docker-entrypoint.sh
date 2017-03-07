PYSPARK_DRIVER_PYTHON=jupyter \
PYSPARK_DRIVER_PYTHON_OPTS="notebook --no-browser --port=9999" \
$SPARK_HOME/bin/pyspark \
--packages com.databricks:spark-avro_2.11:3.2.0 \
--master local[8]
