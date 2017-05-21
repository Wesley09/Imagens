.class Lcom/android/systemui/TutorialAccessNotification$9;
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
    .line 894
    iput-object p1, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 897
    const-string v2, "STATUSBAR-TutorialAccessNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNotifPanelCloseUpHandler : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 899
    .local v0, "Y":I
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-boolean v2, v2, Lcom/android/systemui/TutorialAccessNotification;->firstTimeFlag:Z

    if-eqz v2, :cond_0

    .line 900
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$1000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpNotificationHandlerGrey:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/systemui/TutorialAccessNotification;->access$1300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 901
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iput-boolean v5, v2, Lcom/android/systemui/TutorialAccessNotification;->firstTimeFlag:Z

    .line 906
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandlerGrey:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$3300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x32

    if-ltz v2, :cond_1

    .line 907
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpQuickPanelCompleteTip:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$3400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 908
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandler:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$2400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 909
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandlerGrey:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$3300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 910
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandlerGrey:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$3300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 911
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mHelpAccessQuickPanel:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$2500(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBottom(I)V

    .line 912
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 913
    .local v1, "msg1":Landroid/os/Message;
    add-int/lit8 v2, v0, -0x32

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 914
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    iget-object v2, v2, Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelCloseUpHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 917
    .end local v1    # "msg1":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelHelpHandlerGrey:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$3300(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    if-gez v2, :cond_2

    .line 918
    iget-object v2, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->h:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/TutorialAccessNotification;->access$1700(Lcom/android/systemui/TutorialAccessNotification;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/TutorialAccessNotification$9;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->helpEnd:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/systemui/TutorialAccessNotification;->access$3500(Lcom/android/systemui/TutorialAccessNotification;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 919
    :cond_2
    return-void
.end method
