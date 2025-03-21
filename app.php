
class tasks{
    public $task_name;
    public $status_Status;
    public $description;


    public function settask_info($task_name,$status_Status,$description){
        $this->task_name=$task_name;
        $this->status_Status=$status_Status;
        $this->description=$description;
    }
    public function gettask_info(){
        echo "task_name :". $this->task_name ."<br>Task_Status:".$this->status_Status ."<br>" ;
    }
}


$task1 = new tasks();
$task1->settask_info("task","completed","this is task1");
$task1->gettask_info();


?>
</body>
</html>