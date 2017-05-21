.class Lcom/android/systemui/TutorialDragDownAnimView$1;
.super Landroid/os/Handler;
.source "TutorialDragDownAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/TutorialDragDownAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TutorialDragDownAnimView;


# direct methods
.method constructor <init>(Lcom/android/systemui/TutorialDragDownAnimView;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v7, 0xc8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 65
    const-string v0, "STATUSBAR-DropDownAnimView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$000(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$100(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v4

    .line 70
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$100(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/systemui/TutorialDragDownAnimView$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/TutorialDragDownAnimView$1$1;-><init>(Lcom/android/systemui/TutorialDragDownAnimView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 75
    invoke-virtual {p0, v3, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$000(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$100(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v3

    .line 80
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$100(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/systemui/TutorialDragDownAnimView$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/TutorialDragDownAnimView$1$2;-><init>(Lcom/android/systemui/TutorialDragDownAnimView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 85
    invoke-virtual {p0, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$000(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$100(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v6

    .line 90
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$100(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v6

    new-instance v1, Lcom/android/systemui/TutorialDragDownAnimView$1$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/TutorialDragDownAnimView$1$3;-><init>(Lcom/android/systemui/TutorialDragDownAnimView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 95
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$000(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$100(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v5

    .line 100
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$100(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v5

    new-instance v1, Lcom/android/systemui/TutorialDragDownAnimView$1$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/TutorialDragDownAnimView$1$4;-><init>(Lcom/android/systemui/TutorialDragDownAnimView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
