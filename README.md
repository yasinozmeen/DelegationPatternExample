# DelegationPatternExample

The purpose of my application is to use protocol delegation in my future MVVM projects. What I did was creating a protocol on the second page and defining its necessary functions. By granting the protocol authority to the class affected by the protocol functions through an extension, I was able to call them whenever I wanted on both pages. This way, I achieved communication between the two classes and performed data transfer.

For example, in the ViewModel of the MVVM architecture, I can use this approach to send the data I fetched to the UI. By conforming to the protocol in the ViewModel and implementing the protocol functions, I can define how the data should be transferred and processed in the UI class. This allows for loose coupling between the ViewModel and the UI, making the code more maintainable and testable.

Using protocol delegation in MVVM projects provides a clean and structured way to establish communication and data transfer between different components of the architecture. It helps maintain separation of concerns and promotes reusability of code.

---

I did use to [snapkit](https://github.com/SnapKit/SnapKit) for programmatic ui 
