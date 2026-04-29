using System.Linq.Expressions;
using UnityEngine;
using static UnityEditor.ShaderData;

public class Animationtest : MonoBehaviour
{
    public string Player;
    public Animator animator;
    public bool Chest_Pass_Left;
    public bool Chest_Pass_Right;
    public bool Defense;
    public bool Jogback;
    public bool JogFront;
    public bool JogBall;
    public bool Jumpshot;
    public bool JogLeft;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (Chest_Pass_Left)
        {
            animator.SetBool("Chest Pass Left", true);
        }
        else if (Chest_Pass_Right)
        {
            animator.SetBool("Chest Pass Right", true);
        }
        else if (Defense)
        {
            animator.SetBool("Defense", true);
        }
        else if (Jogback)
        {
            animator.SetBool("Jogback", true);
        }
        else if (JogFront)
        {
            animator.SetBool("JogFront", true);
        }
        else if (JogBall)
        {
            animator.SetBool("JogBall", true);
        }

        else if (Jumpshot)
        {
            animator.SetBool("Jumpshot", true);
        }
        else if (JogLeft)
        {
            animator.SetBool("JogLeft", true);
        }

        else
        {
            animator.SetBool("Chest Pass Left", false);
            animator.SetBool("Chest Pass Right", false);
            animator.SetBool("Defense", false);
            animator.SetBool("Jogback", false);
            animator.SetBool("JogFront", false);
            animator.SetBool("JogBall", false);
            animator.SetBool("Jumpshot", false);
            animator.SetBool("JogLeft", false);
            animator.SetBool("Standing Idle With Ball", true);
        }
    }




}
