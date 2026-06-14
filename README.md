# Toolchains (Clang & GCC)

A custom compilation toolchain repository optimized for building Android kernels and embedded systems.

## 🚀 Features
* **Clang/LLVM:** High-performance compiler infrastructure.
* **GCC Component:** GNU Compiler Collection for compatibility and specific cross-compilation workloads (e.g., `aarch64-linux-android`).
* **Optimizations:** Stripped binaries and essential headers for lightweight environments.

## 📂 Repository Structure
* `/bin` - Executables and cross-compilers (`clang`, `ld`, `gcc`, etc.).
* `/lib` & `/libexec` - Required compiler libraries and internal tools.
* `/aarch64-linux-android` - Target-specific headers and libraries for ARM64 Android.

## 🛠️ How to Use in Kernel Building

To use this toolchain to compile your kernel, add the binary path to your environment and export the compilation flags.

### 1. Set the Environment Path
```bash
export PATH="$(pwd)/toolchains/bin:$PATH"
