import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
import plotly.express as px

onepiece_data = pd.read_csv(r"C:\Users\hiros\OneDrive\Documentos\Paradigmas\aula1710\OnePieceArcs.csv")
arcs_onepiece = onepiece_data["Arc"].value_counts().sort_index()
print("Arcos de One Piece")
print(onepiece_data)