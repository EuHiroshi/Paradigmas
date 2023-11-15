def bytes_para_megabytes(bytes):
    return bytes / (1024 ** 2)

def calcular_percentual(espaco, espaco_total):
    return (espaco / espaco_total) * 100

def gerar_relatorio(arquivo_entrada, arquivo_saida):
    with open(arquivo_entrada, 'r') as f:
        linhas = f.readlines()

    dados_usuarios = []
    espaco_total = 0

    for linha in linhas:
        partes = linha.split()
        nome_usuario = partes[0]
        espaco = int(partes[1])
        dados_usuarios.append((nome_usuario, espaco))
        espaco_total += espaco

    dados_usuarios = sorted(dados_usuarios, key=lambda x: x[1], reverse=True)

    with open(arquivo_saida, 'w') as f:
        f.write("ACME Inc. Uso do espaco em disco pelos usuarios\n")
        f.write("-" * 60 + "\n")
        f.write("{:<4} {:<15} {:<15} {:<10}\n".format("Nr.", "Usuario", "Espaco utilizado", "% do uso"))

        for i, (usuario, espaco) in enumerate(dados_usuarios, 1):
            percentual = calcular_percentual(espaco, espaco_total)
            f.write("{:<4} {:<15} {:<15.2f} MB {:<10.2f}%\n".format(i, usuario, bytes_para_megabytes(espaco), percentual))

        f.write("\nEspaco total ocupado: {:.2f} MB\n".format(bytes_para_megabytes(espaco_total)))
        f.write("Espaco medio ocupado: {:.2f} MB\n".format(bytes_para_megabytes(espaco_total / len(dados_usuarios))))

gerar_relatorio(r"C:\Users\hiros\OneDrive\Documentos\Paradigmas\atv1411.\usuarios.txt", "relatorio.txt")
