.class Lcom/android/systemui/TutorialAccessNotification$3;
.super Landroid/os/Handler;
.source "TutorialAccessNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/TutorialAccessNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TutorialAccessNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/TutorialAccessNotification;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 570
    const-string v2, "STATUSBAR-TutorialAccessNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNotifPanelDragDownHandler : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 573
    .local v0, "Y":I
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$1000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v2, v2, 0x1e

    if-ge v0, v2, :cond_1

    .line 574
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$1000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$1000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 577
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$600(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandlerGrey:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$1300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandlerGrey:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$1300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandlerGrey:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/systemui/TutorialAccessNotification;->access$1300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 580
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandlerGrey:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/systemui/TutorialAccessNotification;->access$1300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    .line 581
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 582
    .local v1, "msg1":Landroid/os/Message;
    add-int/lit8 v2, v0, 0x1e

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 583
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v2, v2, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelDragDownHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 586
    .end local v1    # "msg1":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessNotificationPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$1000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v0, v2, :cond_2

    .line 589
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotiCompleteTutorialTip:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$1500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mBubbleAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/TutorialAccessNotification;->access$1400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 590
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotiCompleteTutorialTip:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$1500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iput-boolean v6, v2, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelDragDownCompleteFlag:Z

    .line 593
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iput-boolean v6, v2, Lcom/android/systemui/TutorialAccessNotification;->firstTimeFlag:Z

    .line 594
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 595
    .restart local v1    # "msg1":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$1000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandlerGrey:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/systemui/TutorialAccessNotification;->access$1300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 596
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$3;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v2, v2, Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelCloseUpHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 598
    .end local v1    # "msg1":Landroid/os/Message;
    :cond_2
    return-void
.end method
