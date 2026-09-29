# Unsteady HFG Calibration PCK
## Overview

This project provides a LabVIEW-based application for performing **Unsteady HFG calibration** using NI DAQ hardware.

The application automatically performs a timed calibration sequence by applying a user-defined voltage and recording the resulting **Bridge OP** and **Shunt Voltage** measurements.

During a calibration, the program:
 
1. Records the initial measurements for a specified **Delay** period
2. Applies the configured **Supplied Voltage**
3. Maintains this voltage for the specified **Voltage Time**
4. Returns the analogue output to **0 V**
5. Continues recording for the specified **Response** period
6. Automatically finishes the calibration and saves the results

Calibration results are saved automatically to a CSV file.

---
## How to Run the Application

There are **two ways to use this program**.

### Option 1 - Run in the LabVIEW Development Environment

1. Clone or download this repository
2. Open:
 
```
Unsteady HFG Calibration PCK.lvproj
```
<img alt="Project file image" src="https://github.com/user-attachments/assets/ced13b62-c719-49e4-8b05-dbb5b3352be6" />

3. In the Project Explorer, open:

```
Main.vi
```
<img alt="Project Explorer Main image" src="https://github.com/user-attachments/assets/0c799d5f-da69-4e52-b9f1-3b5d9e065a58" />

4. Press the **Run** arrow in LabVIEW

<img alt="Run arrow image" src="https://github.com/user-attachments/assets/9709591d-99a7-448e-af09-95a17fc4867a" />

> **Important:** The program should be opened and run from the LabVIEW Project.
>
> This option is primarily intended for development, maintenance and modification of the application.

---

### Option 2 - Build and Run as a Desktop Application (Recommended)

For normal use, running the program as a built application is recommended.

#### Building the Application

1. Open:

```
Unsteady HFG Calibration PCK.lvproj
```
<img alt="Project file image" src="https://github.com/user-attachments/assets/ced13b62-c719-49e4-8b05-dbb5b3352be6" />

2. In the Project Explorer, expand **Build Specifications**
3. Right-click:

```
HFG EXE
```

4. Select **Build**

<img alt="Build image" src="https://github.com/user-attachments/assets/e312187f-100f-424b-a936-b3982fcfe09a" />

The built application will be created in:

```
C:\Unsteady HFG Calibration PCK App
```

The executable is:

```
Unsteady HFG Calibration PCK.exe
```

Once built, launch the executable directly to use the calibration program.

<img alt="EXE in File Explorer image" src="https://github.com/user-attachments/assets/8663ac37-ce73-4fae-9d1d-588de11cdd19" />

---

## How to Use the Program

### 1. Configure the Calibration

Set the following values before starting:

- **Supplied Voltage** - Voltage applied during the calibration
- **Delay (ms)** - Time before the supplied voltage is applied
- **Voltage Time (ms)** - Time for which the supplied voltage is applied
- **Response (ms)** - Time to continue recording after the supplied voltage is removed

All timing values are entered in **milliseconds (ms)**.

<img alt="Base FP image" src="https://github.com/user-attachments/assets/c8ce87f3-67ee-443c-9a6e-078d3c9aefdc" />

### 2. Configure the DAQ

Select the required:

- **Device Name**
- **Sample Rate**
- **Analogue Output (AO) Channel**
- **Analogue Input (AI) Channels**

The two analogue input channels correspond to:

- **Bridge OP**
- **Shunt Voltage**

<img alt="Channel Select image" src="https://github.com/user-attachments/assets/32c5b68d-781f-447b-bd9f-82f15409b321" />

### 3. Start the Calibration

Click **Start**.

The program will automatically:

1. Begin recording
2. Wait for the configured **Delay**
3. Apply the **Supplied Voltage**
4. Maintain the voltage for the configured **Voltage Time**
5. Return the analogue output to **0 V**
6. Continue recording for the configured **Response** time
7. Finish the calibration automatically

The current **Calibration State**, **Bridge OP**, **Shunt Voltage**, **Current Supplied Voltage** and live waveform data can be monitored from the front panel.

The **Stop** button can be used to stop the program manually if required.

<img alt="Running image" src="https://github.com/user-attachments/assets/6321d4e7-4cde-4682-bbed-e017c31b73cd" />

---

## Results

Calibration results are recorded automatically to a CSV file, named as the exact timestamp of the Start button being pressed.

Results are stored in the application's:

```
Results
```

folder.

> **Note:** The Results folder is automatically created during the first run of the program if one does not already exist.

The current output file location is displayed in the **File Path** indicator on the front panel.

Each recorded measurement contains:

- Timestamp
- Bridge OP
- Shunt Voltage
- Supplied Voltage
- Calibration State

The mean **Bridge OP** and **Shunt Voltage** values are also included in the results file.

---

## Need Help?

If you experience any issues using the program or require assistance with the calibration setup, please contact the **University of Bath Software Labs** team.
