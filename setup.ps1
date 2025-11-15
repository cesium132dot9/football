# setup.ps1

$VENV_NAME = "football_env"

if (Test-Path $VENV_NAME) {
    Remove-Item -Recurse -Force $VENV_NAME
}

python -m venv $VENV_NAME

& ".\$VENV_NAME\Scripts\Activate.ps1"

python -m pip install --upgrade pip

pip install pandas numpy scipy
pip install torch torchvision --index-url https://download.pytorch.org/whl/cu130
pip install matplotlib seaborn plotly ipywidgets
pip install jupyter notebook ipykernel
python -m ipykernel install --user --name=$VENV_NAME --display-name="football venv"