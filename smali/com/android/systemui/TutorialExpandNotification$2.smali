.class Lcom/android/systemui/TutorialExpandNotification$2;
.super Landroid/os/Handler;
.source "TutorialExpandNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/TutorialExpandNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TutorialExpandNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/TutorialExpandNotification;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/systemui/TutorialExpandNotification$2;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 381
    const-string v2, "STATUSBAR-ExpandNotificationTutorial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDragDownHandler : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 384
    .local v0, "Y":I
    # getter for: Lcom/android/systemui/TutorialExpandNotification;->expandnotifopenHeight:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1300()I

    move-result v2

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->marginTop:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1100()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    if-ge v0, v2, :cond_2

    .line 385
    # getter for: Lcom/android/systemui/TutorialExpandNotification;->expandnotifopenHeight:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1300()I

    move-result v2

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->marginTop:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1100()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    .line 386
    # getter for: Lcom/android/systemui/TutorialExpandNotification;->expandnotifopenHeight:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1300()I

    move-result v2

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->marginTop:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1100()I

    move-result v3

    add-int v0, v2, v3

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification$2;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationHandler:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/TutorialExpandNotification;->access$400(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 389
    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification$2;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationOpen:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/TutorialExpandNotification;->access$500(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/ImageView;

    move-result-object v2

    add-int/lit8 v3, v0, 0xa

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    .line 390
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 391
    .local v1, "msg1":Landroid/os/Message;
    add-int/lit8 v2, v0, 0x14

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 392
    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification$2;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    iget-object v2, v2, Lcom/android/systemui/TutorialExpandNotification;->mDragDownHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 397
    .end local v1    # "msg1":Landroid/os/Message;
    :goto_0
    # getter for: Lcom/android/systemui/TutorialExpandNotification;->expandnotifopenHeight:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1300()I

    move-result v2

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->marginTop:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1100()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification$2;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotiCompleteTip:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui/TutorialExpandNotification;->access$300(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/TutorialExpandNotification$2;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mBubbleAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/TutorialExpandNotification;->access$900(Lcom/android/systemui/TutorialExpandNotification;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 400
    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification$2;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotiCompleteTip:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui/TutorialExpandNotification;->access$300(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification$2;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->mHelpExpandNotificationTip:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui/TutorialExpandNotification;->access$1000(Lcom/android/systemui/TutorialExpandNotification;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v2, p0, Lcom/android/systemui/TutorialExpandNotification$2;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->h:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/TutorialExpandNotification;->access$1500(Lcom/android/systemui/TutorialExpandNotification;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/TutorialExpandNotification$2;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->helpEnd:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/systemui/TutorialExpandNotification;->access$1400(Lcom/android/systemui/TutorialExpandNotification;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    :cond_1
    return-void

    .line 394
    :cond_2
    # getter for: Lcom/android/systemui/TutorialExpandNotification;->expandnotifopenHeight:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1300()I

    move-result v2

    # getter for: Lcom/android/systemui/TutorialExpandNotification;->marginTop:I
    invoke-static {}, Lcom/android/systemui/TutorialExpandNotification;->access$1100()I

    move-result v3

    add-int v0, v2, v3

    goto :goto_0
.end method
