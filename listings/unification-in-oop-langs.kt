fun <T> concat(list1: List<T>, list2: List<T>): List<T> {
    val result = new ArrayList<T>()
    result.addAll(list1)
    result.addAll(list2)
    return result
}

val intList: List<Int> = concat(listOf(1, 2), listOf(3))
val anyList: List<Any> = concat(listOf(1, 2), listOf("a"))