.class final Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;
.super Ljava/lang/Object;
.source "TutorialAccessNotification.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/TutorialAccessNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "mNotifPanelTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TutorialAccessNotification;


# direct methods
.method private constructor <init>(Lcom/android/systemui/TutorialAccessNotification;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/TutorialAccessNotification;Lcom/android/systemui/TutorialAccessNotification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/TutorialAccessNotification;
    .param p2, "x1"    # Lcom/android/systemui/TutorialAccessNotification$1;

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v10, 0x1

    const/16 v9, 0x3e8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 411
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v0, v4

    .line 412
    .local v0, "X":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v1, v4

    .line 413
    .local v1, "Y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 414
    .local v2, "count":I
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$202(I)I

    .line 415
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0072

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->INTITIAL_BOUND_FOR_DRAG:I
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$302(I)I

    .line 416
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 497
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 498
    return v7

    .line 418
    :pswitch_1
    const-string v4, "STATUSBAR-TutorialAccessNotification"

    const-string v5, "ACTION_DOWN triggered "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelFirstMove:Z
    invoke-static {v7}, Lcom/android/systemui/TutorialAccessNotification;->access$402(Z)Z

    .line 421
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    if-nez v4, :cond_1

    .line 422
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4, v5}, Lcom/android/systemui/TutorialAccessNotification;->access$502(Lcom/android/systemui/TutorialAccessNotification;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 427
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 428
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 430
    # getter for: Lcom/android/systemui/TutorialAccessNotification;->INTITIAL_BOUND_FOR_DRAG:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$300()I

    move-result v4

    if-gt v1, v4, :cond_0

    .line 431
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$600(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$200()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 432
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$200()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBottom(I)V

    .line 433
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$600(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 439
    :pswitch_2
    const-string v4, "STATUSBAR-TutorialAccessNotification"

    const-string v5, "ACTION_UP triggered "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelMoveFlag:Z
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$800()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 441
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 442
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 443
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelSpeed:F
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$900(Lcom/android/systemui/TutorialAccessNotification;)F

    move-result v4

    const/high16 v5, 0x44fa0000    # 2000.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 445
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 446
    .local v3, "msg":Landroid/os/Message;
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 447
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v4, v4, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelFlingHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 461
    :goto_2
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelMoveFlag:Z
    invoke-static {v6}, Lcom/android/systemui/TutorialAccessNotification;->access$802(Z)Z

    goto/16 :goto_0

    .line 451
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$1000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x2

    if-lt v1, v4, :cond_3

    .line 452
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 453
    .restart local v3    # "msg":Landroid/os/Message;
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 454
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v4, v4, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelDragDownHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 456
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 457
    .restart local v3    # "msg":Landroid/os/Message;
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 458
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v4, v4, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelDragUpHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 465
    .end local v3    # "msg":Landroid/os/Message;
    :pswitch_3
    const-string v4, "STATUSBAR-TutorialAccessNotification"

    const-string v5, "ACTION_POINTER_DOWN triggered "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 469
    :pswitch_4
    const-string v4, "STATUSBAR-TutorialAccessNotification"

    const-string v5, "ACTION_POINTER_UP triggered "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 473
    :pswitch_5
    const-string v4, "STATUSBAR-TutorialAccessNotification"

    const-string v5, "ACTION_MOVE triggered "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    # getter for: Lcom/android/systemui/TutorialAccessNotification;->INTITIAL_BOUND_FOR_DRAG:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$300()I

    move-result v4

    if-gt v1, v4, :cond_4

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelFirstMove:Z
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$400()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 475
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$600(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$600(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$200()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 477
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$200()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBottom(I)V

    .line 478
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$1100(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotificationTutorialTip:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$1200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 481
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelMoveFlag:Z
    invoke-static {v7}, Lcom/android/systemui/TutorialAccessNotification;->access$802(Z)Z

    goto/16 :goto_0

    .line 484
    :cond_4
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelMoveFlag:Z
    invoke-static {v7}, Lcom/android/systemui/TutorialAccessNotification;->access$802(Z)Z

    .line 485
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelFirstMove:Z
    invoke-static {v6}, Lcom/android/systemui/TutorialAccessNotification;->access$402(Z)Z

    .line 486
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 487
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 488
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelSpeed:F
    invoke-static {v4, v5}, Lcom/android/systemui/TutorialAccessNotification;->access$902(Lcom/android/systemui/TutorialAccessNotification;F)F

    .line 489
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$600(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$600(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$600(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 491
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$600(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Landroid/view/View;->setBottom(I)V

    .line 492
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$1100(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mNotifPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotificationTutorialTip:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$1200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
