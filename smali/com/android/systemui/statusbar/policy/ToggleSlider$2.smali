.class Lcom/android/systemui/statusbar/policy/ToggleSlider$2;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x42

    const/16 v1, 0x17

    const/4 v2, 0x0

    .line 180
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    return v2

    .line 182
    :pswitch_0
    if-eq p2, v3, :cond_1

    if-ne p2, v1, :cond_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$002(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z

    goto :goto_0

    .line 187
    :pswitch_1
    if-eq p2, v3, :cond_2

    if-ne p2, v1, :cond_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$200(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$300(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$400(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01a8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
