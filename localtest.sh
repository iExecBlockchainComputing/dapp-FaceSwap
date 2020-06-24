cp images/test4.jpg iexec_in/.
cp images/test6.jpg iexec_in/.
docker run --volume $(pwd)/iexec_in:/iexec_in \
           --volume $(pwd)/iexec_out:/iexec_out \
           --env IEXEC_NB_INPUT_FILES=2 \
           --env IEXEC_INPUT_FILE_NAME_1=test4.jpg \
           --env IEXEC_INPUT_FILE_NAME_2=test6.jpg \
           test
