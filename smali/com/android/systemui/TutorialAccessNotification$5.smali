.class Lcom/android/systemui/TutorialAccessNotification$5;
.super Ljava/lang/Object;
.source "TutorialAccessNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 630
    iput-object p1, p0, Lcom/android/systemui/TutorialAccessNotification$5;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification$5;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification$5;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mNotifPanelLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/TutorialAccessNotification;->access$1800(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification$5;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/TutorialAccessNotification;->mEnableQuickPanel:Z
    invoke-static {v0, v1}, Lcom/android/systemui/TutorialAccessNotification;->access$1902(Lcom/android/systemui/TutorialAccessNotification;Z)Z

    .line 637
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification$5;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-virtual {v0}, Lcom/android/systemui/TutorialAccessNotification;->initAccessQuickPanel()V

    .line 638
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification$5;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/TutorialAccessNotification;->access$2000(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification$5;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mQuickPanelTip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/TutorialAccessNotification;->access$2100(Lcom/android/systemui/TutorialAccessNotification;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/TutorialAccessNotification$5;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    # getter for: Lcom/android/systemui/TutorialAccessNotification;->mBubbleAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/systemui/TutorialAccessNotification;->access$1400(Lcom/android/systemui/TutorialAccessNotification;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 641
    :cond_0
    return-void
.end method
