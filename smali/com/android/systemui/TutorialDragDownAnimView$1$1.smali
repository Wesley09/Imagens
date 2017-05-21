.class Lcom/android/systemui/TutorialDragDownAnimView$1$1;
.super Ljava/lang/Object;
.source "TutorialDragDownAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/TutorialDragDownAnimView$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/TutorialDragDownAnimView$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/TutorialDragDownAnimView$1;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/TutorialDragDownAnimView$1$1;->this$1:Lcom/android/systemui/TutorialDragDownAnimView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/TutorialDragDownAnimView$1$1;->this$1:Lcom/android/systemui/TutorialDragDownAnimView$1;

    iget-object v0, v0, Lcom/android/systemui/TutorialDragDownAnimView$1;->this$0:Lcom/android/systemui/TutorialDragDownAnimView;

    # getter for: Lcom/android/systemui/TutorialDragDownAnimView;->mDragDownList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/systemui/TutorialDragDownAnimView;->access$000(Lcom/android/systemui/TutorialDragDownAnimView;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 73
    return-void
.end method
