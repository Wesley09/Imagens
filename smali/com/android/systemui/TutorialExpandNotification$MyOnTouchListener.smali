.class final Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;
.super Ljava/lang/Object;
.source "TutorialExpandNotification.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/TutorialExpandNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TutorialExpandNotification;


# direct methods
.method private constructor <init>(Lcom/android/systemui/TutorialExpandNotification;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/TutorialExpandNotification;Lcom/android/systemui/TutorialExpandNotification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/TutorialExpandNotification;
    .param p2, "x1"    # Lcom/android/systemui/TutorialExpandNotification$1;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;-><init>(Lcom/android/systemui/TutorialExpandNotification;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v0, v4

    .line 306
    .local v0, "X":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v1, v4

    .line 307
    .local v1, "Y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 308
    .local v2, "count":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 365
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationClose:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$200(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 366
    return v7

    .line 312
    :pswitch_1
    # getter for: Lcom/android/systemui/TutorialExpandNotification;->flag:Z
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    # setter for: Lcom/android/systemui/TutorialExpandNotification;->flag:Z
    invoke-static {v6}, Lcom/android/systemui/TutorialExpandNotification;->access$102(Z)Z

    .line 314
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationClose:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$200(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v1, v4, :cond_1

    .line 315
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotiCompleteTip:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$300(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$400(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$500(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationClose:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$200(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpAnimView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$600(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$700(Lcom/android/systemui/TutorialExpandNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$800(Lcom/android/systemui/TutorialExpandNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationTip:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$1000(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mBubbleAnimation:Landroid/view/animation/Animation;
    invoke-static {v5}, Lcom/android/systemui/TutorialExpandNotification;->access$900(Lcom/android/systemui/TutorialExpandNotification;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 323
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationTip:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$1000(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 327
    :cond_1
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 328
    .local v3, "msg":Landroid/os/Message;
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 329
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    iget-object v4, v4, Lcom/android/systemui/TutorialExpandNotification;->mDragDownHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 334
    .end local v3    # "msg":Landroid/os/Message;
    :pswitch_2
    const-string v4, "STATUSBAR-ExpandNotificationTutorial"

    const-string v5, "ACTION_POINTER_DOWN triggered "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 339
    :pswitch_3
    if-lez v2, :cond_0

    .line 340
    # setter for: Lcom/android/systemui/TutorialExpandNotification;->flag:Z
    invoke-static {v7}, Lcom/android/systemui/TutorialExpandNotification;->access$102(Z)Z

    .line 341
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationCloseLayout:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$1200(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    # setter for: Lcom/android/systemui/TutorialExpandNotification;->marginTop:I
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$1102(I)I

    .line 342
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationClose:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$200(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 343
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationClose:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$200(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$500(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$400(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 348
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpAnimView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$600(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$700(Lcom/android/systemui/TutorialExpandNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$800(Lcom/android/systemui/TutorialExpandNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationTip:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$1000(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationClose:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$200(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$400(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$500(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    # setter for: Lcom/android/systemui/TutorialExpandNotification;->expandnotifopenHeight:I
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$1302(I)I

    .line 355
    # getter for: Lcom/android/systemui/TutorialExpandNotification;->expandnotifopenHeight:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1300()I

    move-result v4

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->marginTop:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1100()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v1, v4, :cond_3

    .line 356
    # getter for: Lcom/android/systemui/TutorialExpandNotification;->expandnotifopenHeight:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1300()I

    move-result v4

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->marginTop:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1100()I

    move-result v5

    add-int v1, v4, v5

    .line 358
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$400(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 359
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$500(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setBottom(I)V

    .line 360
    iget-object v4, p0, Lcom/android/systemui/TutorialExpandNotification$MyOnTouchListener;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialExpandNotification;->access$500(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
