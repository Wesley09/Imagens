.class Lcom/dualexpanded/DualExpandedSwitch$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DualExpandedSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dualexpanded/DualExpandedSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dualexpanded/DualExpandedSwitch;


# direct methods
.method constructor <init>(Lcom/dualexpanded/DualExpandedSwitch;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dualexpanded/DualExpandedSwitch$1;->this$0:Lcom/dualexpanded/DualExpandedSwitch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 59
    .local v0, "dx":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 60
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/dualexpanded/DualExpandedSwitch$1;->this$0:Lcom/dualexpanded/DualExpandedSwitch;

    invoke-virtual {v1}, Lcom/dualexpanded/DualExpandedSwitch;->moveRight()V

    .line 65
    :goto_0
    const/4 v1, 0x1

    .line 67
    :goto_1
    return v1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/dualexpanded/DualExpandedSwitch$1;->this$0:Lcom/dualexpanded/DualExpandedSwitch;

    invoke-virtual {v1}, Lcom/dualexpanded/DualExpandedSwitch;->moveLeft()V

    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
