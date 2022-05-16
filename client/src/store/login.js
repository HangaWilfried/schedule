import { defineStore } from "pinia"

export const useStudentStore = defineStore("std_auth", {
    state: () => ({
        level: "",
        faculty: ""
    }),
    getters: {
        fillFaculty: (state) => state.faculty,
        fillLevel: (state) => state.level
    },
    actions: {
        setData(level, faculty) {
            this.level = level;
            this.faculty = faculty;
        }
    }
})

export const useTeacherStore = defineStore("tch_auth", {
    state: () => ({
        registrationNumber: "",
        fullName: ""
    }),
    getters: {
        fillName: (state) => state.fullName,
        fillRegister: (state) => state.registrationNumber
    },
    actions: {
        setData(fullName, registrationNumber) {
            this.fullName = fullName;
            this.registrationNumber = registrationNumber;
        }
    }
})
