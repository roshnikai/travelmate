import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let lionIndex: Int
    let otterIndex: Int
    let beaverIndex: Int
    let retrieverIndex: Int
    static var allQuestions = [
        Question(questionText: "Which describes you best when you're with your friends?",
                 possibleAnswers: [
                    "I take charge",
                    "I can sell an idea",
                    "I'm quite serious",
                    "I'm a good listener"
                 ],
                 lionIndex: 0, otterIndex: 1, beaverIndex: 2, retrieverIndex: 3),
        Question(questionText: "What is the most likely sentence you'd say?",
                 possibleAnswers: [
                    "let’s do it my way!",
                    "no worries bro!",
                    "how does that work?",
                    "let’s keep the peace"
                 ],
                 lionIndex: 0, otterIndex: 1, beaverIndex: 2, retrieverIndex: 3),
        Question(questionText: "Which way of thinking describes you best?",
                 possibleAnswers: [
                    "calm",
                    "practical",
                    "independent",
                    "bright ideas"
                 ],
                 lionIndex: 2, otterIndex: 3, beaverIndex: 1, retrieverIndex: 0),
        Question(questionText: "Plans have changed. How do you cope?",
                 possibleAnswers: [
                    "It's exciting I enjoy change",
                    "I’ll work it out",
                    "I like challenges to overcome",
                    "I'm patient and flexible"
                 ],
                 lionIndex: 2, otterIndex: 3, beaverIndex: 1, retrieverIndex: 0),
        Question(questionText: "Has anyone ever told you're a little loud?",
                 possibleAnswers: [
                    "Yes but it's a good thing",
                    "Sometimes I just get a bit excited",
                    "Maybe once or twice, I'm usually more on the mellow side though",
                    "No way – if anything, they have to tell me to speak up"
                 ],
                 lionIndex: 0, otterIndex: 1, beaverIndex: 2, retrieverIndex: 3),
        Question(questionText: "Which of these describes you best?",
                 possibleAnswers: [
                    "Puts other people first",
                    "Neat and tidy",
                    "People like me",
                    "Confident and brave"
                 ],
                 lionIndex: 3, otterIndex: 2, beaverIndex: 1, retrieverIndex: 0),
        Question(questionText: "If your friends had to sum you up in one word it would be:",
                 possibleAnswers: [
                    "Friendly",
                    "Loyal",
                    "Reliable",
                    "Competitive"
                 ],
                 lionIndex: 3, otterIndex: 0, beaverIndex: 1, retrieverIndex: 2),
        Question(questionText: "If you were put in a group project what would be your role?",
                 possibleAnswers: [
                    "I take charge - set goals and make sure the others stick to them",
                    "I make sure we have a good time - someone's got to make it fun!",
                    "I do what needs to be done so people don't get mad at each other",
                    "I work hard at the tasks that I'm set and I hope the others do too"
                 ],
                 lionIndex: 0, otterIndex: 1, beaverIndex: 2, retrieverIndex: 3),
        Question(questionText: "When trying something new, what's your first thought?",
                 possibleAnswers: [
                    "I'm going to give this the best effort I can",
                    "Sweet, I'm gonna be awesome at this",
                    "I'm gonna make this fun",
                    "I hope everyone has a good time"
                 ],
                 lionIndex: 2, otterIndex: 1, beaverIndex: 0, retrieverIndex: 3),
        Question(questionText: "If you're frustrated with someone you tend to",
                 possibleAnswers: [
                    "Keep it to yourself",
                    "Yell at them",
                    "Make fun of them",
                    "People don't make me frustrated very often"
                 ],
                 lionIndex: 1, otterIndex: 2, beaverIndex: 0, retrieverIndex: 3),
    ]
}
