<?php

namespace App\Http\Controllers\Admin;

//use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ReadingLesson;
use App\Models\Question;
use App\Models\Category;
use App\Models\Quiz;
use App\Models\CatePost;
use App\Models\TypeQuestion;
use App\Models\QuizQuestion;
use DOMDocument;
use Illuminate\Support\Facades\File;
use Request;
class PostController extends Controller
{
    public function getUpload() {
        $ques = new Question();
        $i_ques = $ques::orderBy('id', 'desc')->first();
        if ($i_ques == NULL) {
            $id_ques = 1;
        }
        else {
            $id_ques = $i_ques->question_id_custom + 1;
        }
        $cate = new Category();
        $list_cate = $cate::select()->get();

        $type_quiz = new TypeQuestion();
        $list_type_quiz = $type_quiz::select()->get();

//        dd($id_ques);
        return view('admin.upPost', compact('id_ques', 'list_cate', 'list_type_quiz'));
    }

    /**
     * @param ClientUpRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postUpload(Request $request)
    {
        if (Request::ajax()) {
            $img_url = $_POST['img_url'];
            $img_name = $_POST['img_name'];
//            $img_extension = $_POST['img_extension'];
            $img_name = stripUnicode($img_name);
            $content_post = $_POST['content_post'];
            $content_highlight = $_POST['content_highlight'];
            $content_quiz = $_POST['content_quiz'];
            $content_answer_quiz = $_POST['content_answer_quiz'];
            $cate_selected = $_POST['cate_selected'];
            $list_answer = $_POST['list_answer'];
            $title_post = $_POST['title_post'];
            $type_questions = $_POST['type_question'];

            $base_to_php = explode(',', $img_url);

            $data = base64_decode($base_to_php[1]);

            $filepath = base_path() . '/storage/upload/images/img-feature/';

            if (!File::exists($filepath)) {
                File::makeDirectory($filepath, 0777, true, true);
            }

            $filename_img = base_path() . '/storage/upload/images/img-feature/' . $img_name;

            file_put_contents($filename_img, $data);

            $post = new ReadingLesson();
            $post_id = $post->createNewPost($title_post, $content_post, $content_highlight, $img_name);

//            $img_feature = new ImageFeature();
//            $img_feature->addImageFeature($post_id, $img_name, $img_url);

            $total_questions = sizeof($list_answer);
            $quiz = new Quiz();
            $quiz_id = $quiz->createNewQuiz($post_id, $content_quiz, $content_answer_quiz, $total_questions);

            $catePost = new CatePost();
            $catePost->addNewCatePost($post_id, $cate_selected);

            foreach ($list_answer as $qnumber => $answer) {
                $newQuestion = new Question();
                $newQuestion->addNewQuestion($quiz_id, $qnumber, $answer);
            }

            foreach ($type_questions as $type_question) {
                $newQuizQuestion = new QuizQuestion();
                $newQuizQuestion->addNewQuizQuestion($quiz_id, $type_question);
            }

            return json_encode(['success' => 'success']);
        }
    }
}
