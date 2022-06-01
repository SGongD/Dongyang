using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterController : MonoBehaviour
{
    public float movePower = 10f;
    public float KickBoardMovePower = 15f;
    public float jumpPower = 20f; //Set Gravity Scale in Rigidbody2D Component to 5

    // public Scrollbar HealthBar;
    // public SoundManager soundManager;
    // public Text ScoreText;
    // public Text DieText;

    private Rigidbody2D rb; //Charcter
    public PolygonCollider2D rbIdle;
    public PolygonCollider2D rbSlide;
    private Animator anim;
    
    private int direction = 1;
    
    private bool jump = false; // 점프인지 아닌지
    private bool slide = false; // 슬라이드(아래키 누를 시)
    private bool alive = true; // 살아있는지 확인
    private bool isKickboard = false;
    private int jumpCount = 0;
    // private float health = 100f; 

    // Start is called before the first frame update

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        anim = GetComponent<Animator>();
    }

    private void Update()
    {
        Restart();
        if (alive)
        {
            Hurt();
            Die();
            Jump();
            // KickBoard();
        }
    }

    private void FixedUpdate(){
        if(jumpCount > 0 && jump){
            rb.velocity = (Vector2.up * jumpPower);
            anim.SetInteger("Jump", jumpCount); // Jump 애니메이션 파라미터 의미
            jump = false;
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if(collision.gameObject.CompareTag("Ground")){
            jumpCount = 0;
            anim.SetInteger("Jump", jumpCount);
            anim.SetBool("Idle", true);
        }
    }
    
    // void KickBoard()
    // {
    //     if (Input.GetKeyDown(KeyCode.Alpha4) && isKickboard)
    //     {
    //         isKickboard = false;
    //         anim.SetBool("isKickBoard", false);
    //     }
    //     else if (Input.GetKeyDown(KeyCode.Alpha4) && !isKickboard )
    //     {
    //         isKickboard = true;
    //         anim.SetBool("isKickBoard", true);
    //     }

    // }
    void Jump()
    {
        if ((Input.GetButtonDown("Jump") || Input.GetAxisRaw("Vertical") > 0)
        && jumpCount < 2)
        {
            jumpCount++;
            jump = true;
            anim.SetBool("Idle", false);
        }
        if (!jump)
        {
            return;
        }

        rb.velocity = Vector2.zero;

        Vector2 jumpVelocity = new Vector2(0, jumpPower);
        rb.AddForce(jumpVelocity, ForceMode2D.Impulse);

        jump = false;
    }

    // void DoubleJump(){
    //     if(())
    // }

    void Hurt()
    {
        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            anim.SetTrigger("hurt");
            if (direction == 1)
                rb.AddForce(new Vector2(-5f, 1f), ForceMode2D.Impulse);
            else
                rb.AddForce(new Vector2(5f, 1f), ForceMode2D.Impulse);
        }
    }
    void Die()
    {
        if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            isKickboard = false;
            anim.SetBool("isKickBoard", false);
            anim.SetTrigger("die");
            alive = false;
        }
    }
    void Restart()
    {
        if (Input.GetKeyDown(KeyCode.Alpha0))
        {
            isKickboard = false;
            anim.SetBool("isKickBoard", false);
            anim.SetTrigger("idle");
            alive = true;
        }
    }
}
