# Используем базовый образ Python
FROM python:3.8

# Устанавливаем необходимые зависимости
RUN pip install pandas numpy scikit-learn jupyter

# Копируем файлы в контейнер
COPY train_df.csv /app/train_df.csv
COPY test_df.csv /app/test_df.csv
COPY task.ipynb /app/task.ipynb

# Рабочая директория
WORKDIR /app

# Запускаем Jupyter Notebook
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
