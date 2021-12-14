/*
This program uses the MrCoxallStack class.
author  Donggeun Lim
version 1.0
since   2021-12-10
*/

// Class that emulates a stack
class MrCoxallStack<T> {

    // Custom error types
    enum Errors: Error { case emptyStackException }

    // ArrayList signifying a stack
    private var stackAsArray = [T]()

    // Pushes a number to the stack
    func push(pushElement: T) { self.stackAsArray.insert(pushElement, at: 0) }

    // Pops the first element in the stack
    func pop() throws -> T {
        if self.stackAsArray.count == 0 {
            throw Errors.emptyStackException
        } else {
            return self.stackAsArray.removeFirst()
        }
    }

    // Returns the first element in the stack
    func peek() throws -> T {
        if self.stackAsArray.count == 0 {
            throw Errors.emptyStackException
        } else {
            return self.stackAsArray[0]
        }
    }

    // Clears the stack
    func clear() { self.stackAsArray.removeAll() }

    // Displays the stack
    func showStack() {
        self.stackAsArray.forEach { element in print("\(element)")}
    }
}
