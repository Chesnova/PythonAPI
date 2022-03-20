FROM python
WORKDIR /tests_project/
COPY requirements.txt .
RUN pip install -r rerequirements.txt
ENV ENV=dev
CMD puthon -m pytest -s --alluredir=test_results/ /tests_project/tests/

