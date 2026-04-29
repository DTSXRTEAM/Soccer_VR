using UnityEngine;

public class Animatemodel : MonoBehaviour
{
    public Animator PlayerAnimator;
    public Animator BallAnimator;


    [Header("Main Player")]
    public bool Idle_With_Ball;
    public bool Jog_FWD_With_Ball;
    public bool Jump_Shot;
    public bool Standing_Idle_No_Ball;
    public bool Jog_BWD_No_Ball;
    public bool Jog_R_No_Ball;
    public bool Jog_L_No_Ball;
    public bool Defense;
    //public bool Jog_FWD_Stop_With_Ball;
    //public bool Jog_FWD_Start_With_Ball;


    public void Update()
    {
        // Main Player
        PlayerAnimator.SetBool("Idle With Ball", Idle_With_Ball);
        PlayerAnimator.SetBool("Jog FWD With Ball", Jog_FWD_With_Ball);
        PlayerAnimator.SetBool("Jump Shot", Jump_Shot);
        PlayerAnimator.SetBool("Standing Idle No Ball", Standing_Idle_No_Ball);
        PlayerAnimator.SetBool(" Jog R No Ball", Jog_R_No_Ball);
        PlayerAnimator.SetBool(" Jog L No Ball", Jog_L_No_Ball);
        PlayerAnimator.SetBool(" Jog BWD No Ball", Jog_BWD_No_Ball);
        PlayerAnimator.SetBool(" Defense", Defense);

        //PlayerAnimator.SetBool("Jog FWD Start With Ball", Jog_FWD_Start_With_Ball);
        //PlayerAnimator.SetBool("Jog FWD Stop With Ball", Jog_FWD_Stop_With_Ball);



        // Ball
        BallAnimator.SetBool("Idle With Ball", Idle_With_Ball);
        BallAnimator.SetBool("Jog FWD With Ball", Jog_FWD_With_Ball); 
        BallAnimator.SetBool("Jump Shot", Jump_Shot);
        BallAnimator.SetBool("Standing Idle No Ball", Standing_Idle_No_Ball);
        BallAnimator.SetBool(" Jog R No Ball", Jog_R_No_Ball);
        BallAnimator.SetBool(" Jog L No Ball", Jog_L_No_Ball);
        BallAnimator.SetBool(" Jog BWD No Ball", Jog_BWD_No_Ball);
        BallAnimator.SetBool(" Defense", Defense);
        //BallAnimator.SetBool("Jog FWD Stop With Ball", Jog_FWD_Stop_With_Ball);
        //BallAnimator.SetBool("Jog FWD Start With Ball", Jog_FWD_Start_With_Ball);
    }
}