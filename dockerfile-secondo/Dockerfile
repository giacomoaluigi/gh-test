FROM public.ecr.aws/datadog/lambda-extension:58 as lambda-ext
FROM public.ecr.aws/lambda/python:3.9
COPY --from=lambda-ext /opt/extensions/ /opt/extensions

WORKDIR ${LAMBDA_TASK_ROOT}

# install dependencies
COPY Pipfile* ./
RUN pip install --upgrade pip \
    && pip install pipenv \
    && pipenv install --deploy --system

# install business logic
COPY . ./

ENV DD_LAMBDA_HANDLER="test.main.handler"

CMD ["datadog_lambda.handler.handler"]