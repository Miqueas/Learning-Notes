#[ The 'when' statement is like the 'if' statement, except that:

  - Each condition must be a constant expression since it is
    evaluated by the compiler.
  - The statements within a branch do not open a new scope.
  - The compiler checks the semantics and produces code only
    for the statements that belong to the first condition that
    evaluates to true

In few words, 'when' statement is like the #ifdef C macro

]#

when system.hostOS == "windows":
  echo "You're using Windows!"
elif system.hostOS == "linux":
  echo "You're using a Linux distro!"
elif system.hostOS == "macosx":
  echo "You're using macOS!"
else:
  echo "Idk what system are you using!"