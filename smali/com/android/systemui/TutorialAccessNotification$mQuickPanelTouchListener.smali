.class final Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;
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
    name = "mQuickPanelTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TutorialAccessNotification;


# direct methods
.method private constructor <init>(Lcom/android/systemui/TutorialAccessNotification;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/TutorialAccessNotification;Lcom/android/systemui/TutorialAccessNotification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/TutorialAccessNotification;
    .param p2, "x1"    # Lcom/android/systemui/TutorialAccessNotification$1;

    .prologue
    .line 650
    invoke-direct {p0, p1}, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;-><init>(Lcom/android/systemui/TutorialAccessNotification;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v12, 0x3e8

    const-wide/16 v10, 0x1

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 652
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v0, v4

    .line 653
    .local v0, "X":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v1, v4

    .line 654
    .local v1, "Y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 655
    .local v2, "count":I
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$202(I)I

    .line 656
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0072

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->INTITIAL_BOUND_FOR_DRAG:I
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$302(I)I

    .line 657
    const-string v4, "STATUSBAR-TutorialAccessNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 788
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 789
    return v9

    .line 660
    :pswitch_1
    const-string v4, "STATUSBAR-TutorialAccessNotification"

    const-string v5, "ACTION_DOWN triggered "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    if-nez v4, :cond_1

    .line 662
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4, v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2202(Lcom/android/systemui/TutorialAccessNotification;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 666
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 667
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 668
    if-le v2, v9, :cond_0

    .line 669
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelFirstMove:Z
    invoke-static {v9}, Lcom/android/systemui/TutorialAccessNotification;->access$2302(Z)Z

    .line 671
    # getter for: Lcom/android/systemui/TutorialAccessNotification;->INTITIAL_BOUND_FOR_DRAG:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$300()I

    move-result v4

    if-gt v1, v4, :cond_0

    .line 672
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$200()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 673
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$200()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBottom(I)V

    .line 674
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 664
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 680
    :pswitch_2
    const-string v4, "STATUSBAR-TutorialAccessNotification"

    const-string v5, "ACTION_UP triggered "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelMoveFlag:Z
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$2600()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->flagForInitialDrag:Z
    invoke-static {v7}, Lcom/android/systemui/TutorialAccessNotification;->access$2702(Z)Z

    .line 683
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->flagForDragUp:Z
    invoke-static {v7}, Lcom/android/systemui/TutorialAccessNotification;->access$2802(Z)Z

    .line 684
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F
    invoke-static {v4, v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2902(Lcom/android/systemui/TutorialAccessNotification;F)F

    .line 685
    const-string v4, "RAJAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value of speedup is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F
    invoke-static {v6}, Lcom/android/systemui/TutorialAccessNotification;->access$2900(Lcom/android/systemui/TutorialAccessNotification;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2900(Lcom/android/systemui/TutorialAccessNotification;)F

    move-result v4

    const/high16 v5, 0x44fa0000    # 2000.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 687
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 688
    .local v3, "msg":Landroid/os/Message;
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 689
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v4, v4, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelFlingHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 701
    :goto_2
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelMoveFlag:Z
    invoke-static {v7}, Lcom/android/systemui/TutorialAccessNotification;->access$2602(Z)Z

    goto/16 :goto_0

    .line 691
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$1000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x2

    if-lt v1, v4, :cond_3

    .line 692
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 693
    .restart local v3    # "msg":Landroid/os/Message;
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 694
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v4, v4, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelDragDownHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 696
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 697
    .restart local v3    # "msg":Landroid/os/Message;
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 698
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v4, v4, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelDragUpHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 706
    .end local v3    # "msg":Landroid/os/Message;
    :pswitch_3
    const-string v4, "STATUSBAR-TutorialAccessNotification"

    const-string v5, "ACTION_POINTER_DOWN triggered "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelFirstMove:Z
    invoke-static {v9}, Lcom/android/systemui/TutorialAccessNotification;->access$2302(Z)Z

    goto/16 :goto_0

    .line 711
    :pswitch_4
    const-string v4, "STATUSBAR-TutorialAccessNotification"

    const-string v5, "ACTION_POINTER_UP triggered "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelMoveFlag:Z
    invoke-static {v9}, Lcom/android/systemui/TutorialAccessNotification;->access$2602(Z)Z

    .line 714
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$1000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_0

    .line 718
    # getter for: Lcom/android/systemui/TutorialAccessNotification;->INTITIAL_BOUND_FOR_DRAG:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$300()I

    move-result v4

    if-gt v1, v4, :cond_4

    .line 719
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$200()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 720
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$200()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBottom(I)V

    .line 721
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 723
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$3000(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$3100(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 725
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelTip:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2100(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 729
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 731
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Landroid/view/View;->setBottom(I)V

    .line 732
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 733
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$3000(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 734
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$3100(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 735
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelTip:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2100(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 736
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mLastTouchY:I
    invoke-static {v1}, Lcom/android/systemui/TutorialAccessNotification;->access$3202(I)I

    goto/16 :goto_0

    .line 741
    :pswitch_5
    const-string v4, "STATUSBAR-TutorialAccessNotification"

    const-string v5, "ACTION_MOVE triggered "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 743
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 744
    # getter for: Lcom/android/systemui/TutorialAccessNotification;->INTITIAL_BOUND_FOR_DRAG:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$300()I

    move-result v4

    if-gt v1, v4, :cond_5

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelFirstMove:Z
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$2300()Z

    move-result v4

    if-eqz v4, :cond_5

    if-le v2, v9, :cond_5

    .line 745
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$200()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 746
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->HEADER_HEIGHT:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$200()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBottom(I)V

    .line 747
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 748
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 749
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F
    invoke-static {v4, v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2902(Lcom/android/systemui/TutorialAccessNotification;F)F

    .line 750
    const-string v4, "RAJAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value of speed1 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F
    invoke-static {v6}, Lcom/android/systemui/TutorialAccessNotification;->access$2900(Lcom/android/systemui/TutorialAccessNotification;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$3000(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$3100(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelTip:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2100(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 754
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelMoveFlag:Z
    invoke-static {v9}, Lcom/android/systemui/TutorialAccessNotification;->access$2602(Z)Z

    .line 755
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->flagForInitialDrag:Z
    invoke-static {v9}, Lcom/android/systemui/TutorialAccessNotification;->access$2702(Z)Z

    goto/16 :goto_0

    .line 759
    :cond_5
    # getter for: Lcom/android/systemui/TutorialAccessNotification;->INTITIAL_BOUND_FOR_DRAG:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$300()I

    move-result v4

    if-le v1, v4, :cond_6

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->flagForInitialDrag:Z
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$2700()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 760
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelMoveFlag:Z
    invoke-static {v9}, Lcom/android/systemui/TutorialAccessNotification;->access$2602(Z)Z

    .line 761
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelFirstMove:Z
    invoke-static {v7}, Lcom/android/systemui/TutorialAccessNotification;->access$2302(Z)Z

    .line 762
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->flagForDragUp:Z
    invoke-static {v9}, Lcom/android/systemui/TutorialAccessNotification;->access$2802(Z)Z

    .line 763
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 764
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Landroid/view/View;->setBottom(I)V

    .line 765
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F
    invoke-static {v4, v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2902(Lcom/android/systemui/TutorialAccessNotification;F)F

    .line 768
    const-string v4, "RAJAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value of speed2 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F
    invoke-static {v6}, Lcom/android/systemui/TutorialAccessNotification;->access$2900(Lcom/android/systemui/TutorialAccessNotification;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$3000(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$3100(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 771
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelTip:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2100(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 772
    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mLastTouchY:I
    invoke-static {v1}, Lcom/android/systemui/TutorialAccessNotification;->access$3202(I)I

    goto/16 :goto_0

    .line 775
    :cond_6
    # getter for: Lcom/android/systemui/TutorialAccessNotification;->INTITIAL_BOUND_FOR_DRAG:I
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$300()I

    move-result v4

    if-gt v1, v4, :cond_0

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->flagForDragUp:Z
    invoke-static {}, Lcom/android/systemui/TutorialAccessNotification;->access$2800()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 776
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 777
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Landroid/view/View;->setBottom(I)V

    .line 778
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 779
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 780
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v5, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelVTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2200(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F
    invoke-static {v4, v5}, Lcom/android/systemui/TutorialAccessNotification;->access$2902(Lcom/android/systemui/TutorialAccessNotification;F)F

    .line 781
    const-string v4, "RAJAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value of speed3 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelSpeed:F
    invoke-static {v6}, Lcom/android/systemui/TutorialAccessNotification;->access$2900(Lcom/android/systemui/TutorialAccessNotification;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout1:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$3000(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 783
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDragDownImageLayout2:Lcom/android/systemui/TutorialDragDownAnimView;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$3100(Lcom/android/systemui/TutorialAccessNotification;)Lcom/android/systemui/TutorialDragDownAnimView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 784
    iget-object v4, p0, Lcom/android/systemui/TutorialAccessNotification$mQuickPanelTouchListener;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelTip:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/systemui/TutorialAccessNotification;->access$2100(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 658
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
