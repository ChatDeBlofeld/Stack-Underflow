# Specifications

## UI

All of our mockups can be found on [figma](https://www.figma.com/file/Om6DSpFPd9A3lZUuTmFboE/Stackunderflow?node-id=0%3A1).

## Pages

### Common elements

A header and a footer are displayed on all pages.

The header contains multiple links which can be followed by the user:

- A link hidden in the *Stack Underflow* logo. It leads to the [home page](#home-page).
- A `Questions` label leading to the [question list](#all-questions).
- A `Login` label leading to the [login page](#login). This label is only displayed if the user isn't logged in.
- A `Register` label leading to the [register page](#register). This label is only displayed if the user isn't logged in.
- A label displaying the user's identity leading to the [user's profile page](#user-profile). This label is only displayed if the user is logged in.

The footer displays various information about the authors and the legal stuff. It contains the same labels as the header too.

### Home page

Description of the website and also shows some
statistics (nb users, nb of questions, nb of tags)

### Login

Displays a greeting and a form to log in. The page should not be reachable if the user is already logged in.

The user can fill an `email address` and a `password` field in the form. A login request is handled when the form is submitted. The user will be redirected on the page he was browsing before login or in his profile if none.

By clicking on a link labelled `Not registered?`, the user is redirected to the [register page](#register).

### Register

Displays a register form. The page should not be reachable if the user is already registered and logged in.

The user can fill the `First name`, `Last name`, `Email address` and `Password` fields and then submit the form with a `Register` button.

The user can also follow a `Already have an account?` labelled link to directly log in.

### User profile

The profile contains information about an user:

- Full name
- Username
- Profile picture
- Description
- Number of asked questions
- Number of answered questions
- List of recent posts

The user can click on any recent post. If the user owns the profile, he can edit the data.

### All questions

This page displays all the questions. Only questions are displayed at the time but the user can use some buttons to see the next or the previous ones. The total number of questions is displayed.

Some information about the questions is displayed. They are the same as the ones described in [question detail](#question-detail) but only a sample of the body is displayed.

The user can also use a button to ask a question.

### Question detail

This page displays some information about the question:

- Title
- Body
- Tags related
- Number of votes
- Number of answers
- Author (can be clicked, leads to a [user's profile](#user-profile))
- Datetime
- A badge if the question is solved

The page also displays all the answers (and the number of them). An answer contains:

- A text body
- An author (can be clicked, leads to a [user's profile](#user-profile))
- A badge if it has solved the associated question
- A number of votes

If the user viewing the page has asked the question, he can edit it. He can also select an answer to notify his question has been solved.

Every logged user can fill a form to send an answer and upvote or downvote the question or any answer.

At the top of the page we can found a "<- All questions" button that redirect the user to the all questions page.

### New question

The user must be logged in to access this page. Then, he can submit a form containing:

- Question title
- Question body
- Tags related
