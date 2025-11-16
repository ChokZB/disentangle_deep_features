# Disentangle Deep Features in Generative Convolution Network for Interpretable Neural-based Synthesis Applications

![License](https://img.shields.io/badge/License-MIT-blue)
![Python](https://img.shields.io/badge/Python-3.8+-yellow)
![PyTorch](https://img.shields.io/badge/PyTorch-2.0+-red)
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ChokZB/disentangle_deep_features/blob/main/disentangle_deep_features.ipynb)

This project investigates how hierarchical deep features can be disentangled and interpreted within generative convolutional networks for image synthesis tasks.  

A modified neural style transfer (NST) framework was implemented using pretrained VGG19 (Caffe weights) to analyse the relationship between content, style, and latent representations across convolutional layers.

---

## 📚 Overview

The aim is to explore interpretability in neural-based synthesis by:
- Disentangling feature hierarchies within VGG-based encoders.
- Studying how different layers encode content and style information.
- Visualising and analysing the latent spaces contributing to image generation.
- Comparing baseline and modified NST pipelines to evaluate synthesis interpretability.

---

## 📁 Project Structure

```
disentangle_deep_features/
│
├── images/
│   ├── Content_1.jpg                     # Sample content image
│   ├── Style_1.jpg                       # Sample style image
│   └── ...
│
├── models/
│   └── download_models.sh                # Optional script to automatically fetch the VGG19 Caffe weights
│
├── outputs/
│   ├── Dual_Channel_NST/                 # Modified NST outputs
│   ├── L-H_Frequency_Images/             # Frequency decomposition visualisations
│   ├── Original_NST/                     # Baseline NST results
│   └── README.md                         # Notes describing generated output folders
│
├── .gitignore                            # Files/folders excluded from Git
│
├── LICENSE                               # MIT License
│
├── README.md                             # Project overview and instructions
│
├── disentangle_deep_features.ipynb       # Main implementation notebook
│
└── requirements.txt                      # Dependency list for reproducibility
```

---

## ⚙️ Tools & Frameworks

- **Python** ≥ 3.8  
- **PyTorch** ≥ 2.0  
- **NumPy**, **Matplotlib**, **OpenCV**
- **Google Colab / Jupyter Notebook** for experimentation and visualisation  

---

## 🚀 Setup & Execution

1. **Clone the repository**
   
   ```bash
   git clone https://github.com/ChokZB/disentangle_deep_features.git
   cd disentangle_deep_features
   ```

2. **Create a virtual environment**

   ```bash
   python -m venv venv
   source venv/bin/activate        # On Linux / macOS
   venv\Scripts\activate           # On Windows
   ```

3. **Install dependencies**
   
   Install all required Python packages using the provided `requirements.txt`:

   ```bash
   pip install -r requirements.txt
   ```

4. **Download pretrained model weights**
   
   The VGG19 weights used are the original Caffe-based parameters, available from:

   ```
   https://web.eecs.umich.edu/~justincj/models/vgg19-d01eb7cb.pth
   ```

   Place the file inside:

   ```
   models/vgg19-d01eb7cb.pth
   ```

5. **Run the notebook**

   ```bash
   jupyter notebook disentangle_deep_features.ipynb
   ```

   or open it directly in Google Colab.

---

## 🧠 Methodology

1. **Feature Extraction:**
   VGG19 pretrained weights (Caffe) used for hierarchical convolutional feature extraction.

2. **Feature Disentanglement:**
   Mid-level feature maps analysed and separated into content and style representations using frequency and channel-wise decomposition.

3. **Neural Style Transfer Pipeline:**
   Both baseline and dual-channel NST architectures implemented to compare interpretability and reconstruction fidelity.

4. **Feature Visualisation:**
   Layer-wise activations, Gram matrices, and reconstructed feature maps visualised to understand network interpretability.

---

## 📈 Results & Analysis

* Disentangled representations demonstrate improved interpretability across convolutional depth.
* Dual-channel NST architecture produced clearer content preservation and reduced feature interference.
* Frequency-based decomposition offered insight into the separation of structural and stylistic information.

Example outputs can be found in:

```
outputs/Dual_Channel_NST/
outputs/L-H_Frequency_Images/
outputs/Original_NST/
```

---


## 🧑‍💻 Author

**Chok Zu Bing**

GitHub: [@ChokZB](https://github.com/ChokZB)

---

## 🪪 Licence

This project is released under the [MIT License](LICENSE).
