![scaling animation](https://github.com/user-attachments/assets/0f89697f-8e10-4f27-ba02-21248069d7d9)# 🎨 Learning Flutter Animations: Implicit vs Explicit

Flutter provides two main types of animations: **Implicit animations** and **Explicit animations**.

| Animation Type  | Description |
|----------------|------------|
| **Implicit Animation** | Automatically animates changes in widget properties without needing a controller. Uses widgets like `AnimatedContainer`, `AnimatedOpacity`, etc. |
| **Explicit Animation** | Provides fine control over animations using an `AnimationController`. Requires manual handling of animation states. |

---

## 🚀 Implicit Animations

Implicit animations are easy to use and animate property changes smoothly. Below are some small projects demonstrating different implicit animations.

### 📌 1. Random Color Changing (Smooth Color Transition)

#### **Description**  
This example animates the background color of a `Container` when a button is pressed. Use **AnimatedContainer** to shift color from one to another within given time duration smootly.

![Animated Container GIF](https://github.com/AbdullahProjects/Flutter_Animations/blob/main/assets/gifs/animated%20container.gif)

### 📌 2. Animated Shopping Cart Button (Expanding Button)

#### **Description**  
This example use **AnimatedContainer** to animates a shopping cart button that expands when clicked, changes color, and displays a checkmark with text.

![Animated Shopping Cart Button GIF](https://github.com/AbdullahProjects/Flutter_Animations/blob/main/assets/gifs/shopping%20cart%20button.gif)

### 📌 3. Tween Animation Builder (Smooth Scaling Animation)

#### **Description**  
This example uses `TweenAnimationBuilder` to animate a circular container that grows smoothly from **0 to 250 in size** over **2 seconds**. It is ideal for one-time animations that do not rely on user interaction.

![Tween Animation Builder GIF](https://github.com/AbdullahProjects/Flutter_Animations/blob/main/assets/gifs/scaling%20animation.gif)



