package com.example

import org.junit.jupiter.api.Nested
import kotlin.test.Test
import kotlin.test.assertContains
import kotlin.test.assertEquals
import kotlin.test.assertFalse
import kotlin.test.assertFailsWith
import kotlin.test.assertTrue

class ExampleTest {
    @Test
    fun comparesValuesAndCollections() {
        val values = listOf(2, 4, 6)
        assertEquals(6, values[2])
        assertEquals(listOf(2, 4, 6), values)
    }

    @Test
    fun checksContainmentAndBooleans() {
        val values = listOf(2, 4, 6)
        assertContains(values, 4)
        assertFalse(values.isEmpty())
        assertTrue(values.size == 3)
    }

    @Nested
    inner class ErrorCases {
        @Test
        fun checksFailures() {
            assertFailsWith<IllegalArgumentException> {
                throw IllegalArgumentException("bad input")
            }
        }
    }
}
