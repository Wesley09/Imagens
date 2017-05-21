.class Landroid/support/v21/ObservableScrollView$100000000;
.super Ljava/lang/Object;
.source "ObservableScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/ObservableScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/ObservableScrollView;

.field private final val$event:Landroid/view/MotionEvent;

.field private final val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/v21/ObservableScrollView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v21/ObservableScrollView$100000000;->this$0:Landroid/support/v21/ObservableScrollView;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v21/ObservableScrollView$100000000;->val$parent:Landroid/view/ViewGroup;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v21/ObservableScrollView$100000000;->val$event:Landroid/view/MotionEvent;

    return-void
.end method

.method static access$0(Landroid/support/v21/ObservableScrollView$100000000;)Landroid/support/v21/ObservableScrollView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ObservableScrollView$100000000;->this$0:Landroid/support/v21/ObservableScrollView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/ObservableScrollView$100000000;->val$parent:Landroid/view/ViewGroup;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ObservableScrollView$100000000;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return-void
.end method
