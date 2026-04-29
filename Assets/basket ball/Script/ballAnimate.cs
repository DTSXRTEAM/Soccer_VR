using UnityEngine;

public class ballAnimate : MonoBehaviour
{
    public string Player;
    public Animator animator;
    public bool Jogball;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Jogball)
        {
            animator.SetBool("Jogball", true);
        }
        else
        {
            animator.SetBool("Jogball", false);
            animator.SetBool("Standing Idle With Ball", true);
        }
    }
}
